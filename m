Return-Path: <usb-storage+bncBC27X66SWQMBBTGZSD5AKGQE3WUE22I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EF6250A8A
	for <lists+usb-storage@lfdr.de>; Mon, 24 Aug 2020 23:10:37 +0200 (CEST)
Received: by mail-yb1-xb47.google.com with SMTP id w17sf12007494ybl.9
        for <lists+usb-storage@lfdr.de>; Mon, 24 Aug 2020 14:10:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598303436; cv=pass;
        d=google.com; s=arc-20160816;
        b=tzJTRJplkxMx2u4mqitImLXHPNNu0zhKPwVwtdaAo3fiSGO4WlxtgyedoI8ZpEcUXd
         EXPMm+iGh8HU44EUGg5HVWVqfgCTsd/U+fwvSmS55qMsoBKIgjrJZtiwVb7lg2CMqztZ
         FkqQU/f9fd1IfCK4L9kWzuRex0RRmHEctzSm5etw4Gp7W+8VDscurMVTai8anE3sed8K
         kACvomTC4H35f/TSeSWg/sz1jzPRJFyunaBkGY6b6cImGGUlVE5NhSpXypYv1Xir2Zn9
         AVCEgZJWD+TdLFGsq/8ZsL3hg+5PveYNWjB8dC+BJv4e82uIE0q+ayxej+QSs27aR9Ep
         1PTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=3pwa5qQY/7+VoLymksjqYbWz+WUPAAUwMUoylrMH6G4=;
        b=FEDZ2iOM+MwDOaxaz1ToNqZbArNLd0NYOlnOMG+QpPHIEAm2GN+4waHMtGeUbJLupp
         Vb47QTGA+scNoZw6ULyMmiMfY68Q5caGTgh1sc3+NJDwjcgnjUL49hh0qc6AuQnzwsmV
         wQmImjJ6dmAk2gKv0hXUk4mfJRoYINxFFMKx/Bfrs8K5W9odYH5XMSJvH1Ipw9xPuz6s
         ANFzvVQSZI8uK3hWbfAnHtRxhYtFri2JHpAOmKV4uX2wYPXk45gutfJZYEPyI39F5XJl
         v8dknUqpB71r6D+0aI89Y3UCcwQ/lKSO0AXoBc51jbBhCWxPFvd1EKhYVKgRABJaTcgV
         zxVA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="JcsilZK/";
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3pwa5qQY/7+VoLymksjqYbWz+WUPAAUwMUoylrMH6G4=;
        b=KU1oR0C3VkPq4RCW8WlhpHk2c2guaxWDGyO4boCScy1NFrqIazRlXRvJjlhIQvqTxw
         xIn35Y7UmUWJULX3tkRmgu1iHs9MoLrMnX95ICRAM0ICgDK/rPJ5KBhgB6TFYLoxjklt
         dt/p76SdN+vH6cbss+SBCmy0xudHdhIy0IX6s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3pwa5qQY/7+VoLymksjqYbWz+WUPAAUwMUoylrMH6G4=;
        b=OnuHpXFB2ZX0/u6/N5NOMov+aGgXyPPIS3UsglHJzQTiJJ8Hdmajh8I4C6DYr7uic0
         dXYquSJ6/dNbEoperi/x4MhUnvG9dd0GM31fVIbrlEA+jdZmyNyI4CRuMx8g1NO/TamI
         othNzdGO1P7iHVlBcz2B6BOZzxNazYVdbsBv8ZJeKwz3YfDbFDDm/vBpmdrG6RlEkNqL
         8yqRqe/QF5+pwGV/iSJvmluzuEjbmcXtWoCE8NNEsaBg/vwaPaP8gZunXdDkMIA0ew6z
         CnAs/fbq7JqMTMfMKyDEUbq2WYIp0oeI9ahzyXBXEcFxBuzhdPHyVTYslyIn32XO3HHU
         8g8Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532AgBud3lPimDlvMoyhcv5P9KMf9LbOe9xwCkL7rnwmR8UGMNQ5
	lO/6obXxKiewLcCYTmq05Af5cQ==
X-Google-Smtp-Source: ABdhPJwHB1thZa/SiZq9NaB4/0GBpTRlQSmRBATyWDCPmUT2sGrjfksjr9ZC4cNHmHUG63aa+EKyJw==
X-Received: by 2002:a25:42d6:: with SMTP id p205mr10231437yba.284.1598303436598;
        Mon, 24 Aug 2020 14:10:36 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5b:b0d:: with SMTP id z13ls4365471ybp.8.gmail; Mon, 24 Aug
 2020 14:10:36 -0700 (PDT)
X-Received: by 2002:a25:d98f:: with SMTP id q137mr9235427ybg.480.1598303435994;
        Mon, 24 Aug 2020 14:10:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598303435; cv=none;
        d=google.com; s=arc-20160816;
        b=grRWG69ymrvuNSc+W+s1k2Hp5gY7Dx77+rF364OIgg1L8otqpWeYoQazqfsuZeUtVv
         Iv5FZNUs++gMygYujgWXPHeHFcwdGd+ueTpv886n/FhJhY1VjDMcPt5KY8hfg7taJJVx
         OvO6SKCmR7vnP4An7MqHD+RernbDwf4HzUhjXZ6Qls3HfHO2o5c7Gcl4bJavEPAJw/5O
         Rm0mQprA3QP5fqzvMmeHA91bV/MnaFTvrgH0v6y8t2h+YsxXCNidSGUiroOP60RfuJE6
         2EgMa3MEQMp4+JanpqqYyAdPxBN25vbIl2Rfnhf8xarxVJeNLY6ZWDwf4OozPQynceQi
         YLBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=98P4pw0MSJfjYTwg7Jr3bMvh36DJTSmp1NgoIinTZVY=;
        b=eEyyAnvJEJeoM1fqmcKs7ocEGevRsUoOzd3fyIEqoZvpOaj5WW2Ukn1v4jcqUAi2SG
         bjCkUNo6H9FbD9NjMjUSjuozlltkHg3jaSEb4tvb1cQ3Yau0Hq3boyrB5qH0JEWenwKX
         HCt03jcPtZRHSxRsy9KKXVMgCQmti69xjaqsfMj79guHxYlESs+UsYFLVt9BgQSt3R6D
         K/C/HSZ88Ef5Dfn9iMaOjmLT8o3eZonKo/FAyVQ0YQvKjakqGdOy94LErcjGgRwUbokO
         5ZQ4qiM7hsWffrtZ60UWwiWX0hfJTsVRn7kr5pjmkAGpI7NE+Cy5TC47qCOoWKqn6Wz7
         ew+g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="JcsilZK/";
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id a16si11514421ybk.145.2020.08.24.14.10.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 14:10:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-290-j4wjj4KqObipz4_39aKn0g-1; Mon, 24 Aug 2020 17:10:34 -0400
X-MC-Unique: j4wjj4KqObipz4_39aKn0g-1
Received: by mail-qv1-f72.google.com with SMTP id d9so7288431qvl.10
        for <usb-storage@lists.one-eyed-alien.net>; Mon, 24 Aug 2020 14:10:34 -0700 (PDT)
X-Received: by 2002:ac8:3894:: with SMTP id f20mr6679735qtc.243.1598303433826;
        Mon, 24 Aug 2020 14:10:33 -0700 (PDT)
X-Received: by 2002:ac8:3894:: with SMTP id f20mr6679720qtc.243.1598303433555;
        Mon, 24 Aug 2020 14:10:33 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id 198sm4681833qkh.19.2020.08.24.14.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 14:10:32 -0700 (PDT)
From: trix@redhat.com
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Tom Rix <trix@redhat.com>
Subject: [usb-storage] [PATCH v2] usb: storage: initialize variable
Date: Mon, 24 Aug 2020 14:10:27 -0700
Message-Id: <20200824211027.11543-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="JcsilZK/";
       spf=pass (google.com: domain of trix@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

From: Tom Rix <trix@redhat.com>

clang static analysis reports this representative problem

transport.c:495:15: warning: Assigned value is garbage or
  undefined
        length_left -= partial;
                   ^  ~~~~~~~
partial is set only when usb_stor_bulk_transfer_sglist()
is successful.

So set partial on entry to 0.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/usb/storage/transport.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 238a8088e17f..044429717dcc 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -414,6 +414,9 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
 {
 	int result;
 
+	if (act_len)
+		*act_len = 0;
+
 	/* don't submit s-g requests during abort processing */
 	if (test_bit(US_FLIDX_ABORTING, &us->dflags))
 		return USB_STOR_XFER_ERROR;
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200824211027.11543-1-trix%40redhat.com.
