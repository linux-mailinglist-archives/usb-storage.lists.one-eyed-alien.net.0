Return-Path: <usb-storage+bncBCWLFYFHWUPBBVGSUXUAKGQEJPRFQTQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5954ADF6
	for <lists+usb-storage@lfdr.de>; Wed, 19 Jun 2019 00:44:37 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id c4sf13665714qkd.16
        for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 15:44:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560897876; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLia2r/sS+CoUZhq4N/XkLf5yMONJ1DeZtUqDSJ/0w44MZMW59+boqFXkhAbylQYSf
         ZkRB9353+e2OfZEZIVgzE9BcGsBSqEkqj3H0tgLLNv8G93+a+lv1Q4o+WnMg/3LaQSyV
         dnat1JL6PCkRcAZEHanrShC5pdN/fW34i56vVUJut2Zyqy2gaZRkZ5JucC+qX3iXqMZx
         KFMhvwt5mONP/Hv8adNi/rNLHJF6dDIv+5ZmPEdwG9FoJNMW2qbRk1r2IJtxJJQVTUMy
         mJoW8U5B7a2sJrOCqxxWlA34p837M+s2YusfB7sFW6p7U3SQhGcIZCHHh4KzkOAzWh6D
         V5Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=DU/sYqnKI0nUuh+y/oTPOFVQzQS5vsWbmwpSTGZOScs=;
        b=cnLyO3QNMloYL1TKkUPDxArfYvYPt3TOKDUn73p0k+RqBSqFNn8hlPCGKwosC6GuZP
         yyPxB7OMVpGdWIrfcR3J1c5z9PkboHTp4wG5SlUBhVfrsmrm8pphXVGRXWn+AFFWIs+/
         W+1kZtvS9ztcLILsp0eRvKOUfEX/YWvTsk8LbwneuN9Ys6R+LSXG25+hIWTj/jWb7z7P
         Ddq5b7XsBfJgT7EsYJXmjqCmSEmHQtah/VaYIsA5yQxbii+6r5PKkWDPcIXrK8grKozS
         sdbrE2JNRHJk5WOGItV5aODiuJJxMyxtH10TcAiNerIQoLd/PM+W6axHREWWpJrfIngE
         psdg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cvIcsaei;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DU/sYqnKI0nUuh+y/oTPOFVQzQS5vsWbmwpSTGZOScs=;
        b=ZmOK81JRvt7hiZRun4YxIKUL3qdvU89T+JlphmoJdY1O/kf+IvhuFwdHMiXShTuwE2
         WqdYs4VPxBusaaLLTmE5eTr43vFnlK+9uHJ9z73kfZnKECaSN1TE5xkko3RQXNFtC5wh
         7e3ZA1JXvn/VZi41x3/ZetIMaHE+yVuOWwYF0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DU/sYqnKI0nUuh+y/oTPOFVQzQS5vsWbmwpSTGZOScs=;
        b=n5FfGJsbBYRPOQQZTfXLigaU6Rdx+9XeszejXoKD2+hlqmt5XNnnGZZcpte9H9qz23
         UToFUhHVnzvEyizoB6A2UzT+vX+08gpQZDpx0if6W6C0/1tghh2Hn2s2CXxUHnxuc05Y
         iQdI97KWH1K5thNIMrgXuIYnw0fPHiuta7MLGqSQsX/KMkQ/AdG4xn0lRBV2V2CwQYbp
         2e5F2VbsbstJ+0xfenrCMCQOOqy9MhVbvKz43Kyk/S8/kfNoc0YN4uHMDoNmuYz+7HYt
         WNkq4pYX7t61V+sbikcC3b7zXdbvr/bzeURGFC70OA3MVzKHRuOCOwST+S8clA2teeqv
         kTPw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAW6WPlpY/oWxSY4W4iQsD/eJB9kUltt5puxZeJZfMYerLee2tGK
	k7ISJImBlgbfWw1baiohy3+cwQ==
X-Google-Smtp-Source: APXvYqx5h+Ykrg4SZYe2WySSCJqj2Afsv08+y1CwN1NAGAZT2gW3SNDhWGLiK6FRdzA+qJFIECcVqw==
X-Received: by 2002:a0c:880b:: with SMTP id 11mr30162296qvl.185.1560897876522;
        Tue, 18 Jun 2019 15:44:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:4c97:: with SMTP id z145ls125459qka.2.gmail; Tue, 18 Jun
 2019 15:44:36 -0700 (PDT)
X-Received: by 2002:a37:a48e:: with SMTP id n136mr24264735qke.223.1560897876142;
        Tue, 18 Jun 2019 15:44:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560897876; cv=none;
        d=google.com; s=arc-20160816;
        b=uP8054yALAU6KE2UonNJxLTA0kO4x6m6RU/R3TYTlznxfw57yDYywEYae2Xu0sPKKQ
         6r+67190Ut+bwZFdhmeRQcopaYbBbdivMA6rMNc+/XVPpqTMmSZuFngfYg7noH+IePFh
         v/joStXbydyge6KY1Z3u6CHss4pbVDl4gv6hbBzBD8/SWttV+QOb32maQDVd6EHDXiH2
         gNCo+kUqepF/f1H2Gv76ywNvxLT8aTZz+pYnOonHNimXXSKTnTllF2dCmwibX6eB4xJW
         kGLNzuZ+eTeKCxY9ARsHpnibzb/oZzNpWQUySbhYMjTRWPy8sjdf5JJZhxV9yjgrXZi0
         GbxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=0BVmvPW35Mw0cJWlTd6mw6l7DnZz2vUZHG/J0CRIjHQ=;
        b=dbvaoKaQd29eCetI8PGrx0QETe7S56XQ91wBV82wmwD0W9jBSWRZdKU4rPgm/5/5wD
         9UEyyNg/0zJ7Jf1wBcWAYtD19XUiXHL6pdC4UtB0Z4OCEDFgCK7+AwfaEr4r68gCu1a9
         dXy+8dWIcABshx3i4w0iN6L0A38lqoWsb7pPsAw4btBPykcGaffVW5zqnHz63QjtCty2
         Y5EIA8s5fHqACFB7FR5hE8ITg7/mds8ulM14nMuBGRvJXMYOKxGcp98CZh1ixQ9x6PP3
         Z8vsrKrZCWRTAFvfSrQO4ERze2z+CemmQoaiFjPsHfpRGDbrjzCOObl72foTGg9t+Qw9
         /22Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cvIcsaei;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id g42sor13570219qvd.15.2019.06.18.15.44.36
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 18 Jun 2019 15:44:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a0c:81e7:: with SMTP id 36mr30015897qve.5.1560897875848;
        Tue, 18 Jun 2019 15:44:35 -0700 (PDT)
Received: from localhost.localdomain ([186.212.50.252])
        by smtp.gmail.com with ESMTPSA id n5sm10254879qta.29.2019.06.18.15.44.32
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 18 Jun 2019 15:44:34 -0700 (PDT)
From: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Marcos Paulo de Souza <marcos.souza.org@gmail.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org (open list:USB MASS STORAGE DRIVER),
	usb-storage@lists.one-eyed-alien.net (open list:USB MASS STORAGE DRIVER)
Subject: [usb-storage] [PATCH v2] usb: storage: scsiglue: Do not skip VPD if
 try_vpd_pages is set
Date: Tue, 18 Jun 2019 19:44:54 -0300
Message-Id: <20190618224454.16595-1-marcos.souza.org@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Original-Sender: marcos.souza.org@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cvIcsaei;       spf=pass
 (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

If BLIST_TRY_VPD_PAGES is set for a device, even for an USB, it should
be honored, so only set skip_vpd_pages is try_vpd_pages is not set.

Signed-off-by: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
Acked-by: Alan Stern <stern@rowland.harvard.edu>
---

 Changes from v1:
 changed the check of try_vpd_pages from:
 	sdev->try_vpd_pages == 0;
 to:
 	!sdev->try_vpd_pages;
 (as suggested by Alan Stern)

 drivers/usb/storage/scsiglue.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 59190d88fa9f..30790240aec6 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -195,8 +195,11 @@ static int slave_configure(struct scsi_device *sdev)
 		 */
 		sdev->skip_ms_page_8 = 1;
 
-		/* Some devices don't handle VPD pages correctly */
-		sdev->skip_vpd_pages = 1;
+		/*
+		 * Some devices don't handle VPD pages correctly, so skip vpd
+		 * pages if not forced by SCSI layer.
+		 */
+		sdev->skip_vpd_pages = !sdev->try_vpd_pages;
 
 		/* Do not attempt to use REPORT SUPPORTED OPERATION CODES */
 		sdev->no_report_opcodes = 1;
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190618224454.16595-1-marcos.souza.org%40gmail.com.
