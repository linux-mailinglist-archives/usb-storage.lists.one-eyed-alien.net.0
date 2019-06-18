Return-Path: <usb-storage+bncBCWLFYFHWUPBBQUCUHUAKGQESJXFUKQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D16F4970A
	for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 03:41:23 +0200 (CEST)
Received: by mail-qk1-x748.google.com with SMTP id u129sf10847007qkd.12
        for <lists+usb-storage@lfdr.de>; Mon, 17 Jun 2019 18:41:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560822082; cv=pass;
        d=google.com; s=arc-20160816;
        b=zna5DzLYl49qUgnByCSe4EVgZvkh7ajk6UYqQIhOOnELaCmcf6cd6MGIdpvUKW67wV
         i8/lgbXvuPGWTeoQafsTQ3fTpIIP2JwpsX6Ej4jVSQVsWSZ0JbLxNIgKFttqPhQkMTjB
         w76Z3QX2hh5zf5gcdsgbroPU4nA6weksgKjjeGvEhdPL6I2X2fIj8CVCN/jW51SPIioP
         EZ7lbDRuWuR9ZwQPO95X9D5UN2Xt7UGZkiyisONK+yTa4bCWQsoOsr+Qyl8ZZib4TwkT
         C0xWYRFspY2ZdDjipxwfAVtrDQ3ukIBGoONl1Pqf8vmxFCTy8AYJiaIl8auZU3tRvfHj
         Imag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4c1NDLC3lPMb+Y4ghfEuqocAne0VX6cZe6IVNbugpbs=;
        b=dUvbCB7lcd4dwJgmP5fcHD7qV2kW6bKnTQ4CPyT09klZZ+ag8gkDSR3nFIRIwQJFn8
         DNU65L9oelhmmmCV9Lv23qe3omrKbckkO2F7kd+XBWwIaPlm2fwshRDT+xlnVAQ7wy4X
         MNUL8NCqGMLbsejbWh3FaQScHvBf61VXUO1DgHZ8tuCnhxPpmfKE/1j2HizY1NDLgSys
         wCS2fwvtr8UeuZOYoyhfMh4V/IgWJ/zu7iJzgMzg/+zUCk88s0zz5bCnXwYy2HrNyEe2
         2/KlZHbywqAVuCb4H51mUxnxjCjBlKz2VRIWj/4Z1z2ZLpOlTIqGcjXcyzOyTXPK3NTo
         7pCw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PHmJKwG+;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4c1NDLC3lPMb+Y4ghfEuqocAne0VX6cZe6IVNbugpbs=;
        b=jgRqsvoSF+Sl/g4qN3jwqaGTwzPUVFoXHcQc6OgRKIoq2VptdJcM208zEMS85ta2o9
         NfLX+cCScwGmnwRGVpl9vvr02WmpfTy9XpoTRzdqhLwlPv2VyTtE5fCJzF0wLDK+7fyV
         uyNVlDJh+ZVsqMdpM3f7aGc1XP7XZ61PAAOCY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4c1NDLC3lPMb+Y4ghfEuqocAne0VX6cZe6IVNbugpbs=;
        b=ueU9S2lYp0xVBcaMkW9ATxfswebWgeGHY48r3oXLuu4cadNo0AzH1t0H/CIvMSmS70
         AH4gPjKV1IY5OjM/CndNIuYNogc3wBFqz6z0rFQZEl/93HdGqSqQzxyFYxRJfVyN7/R+
         6ILrwv857cbNLJ7eZOd3gls5NNmrKtDDYjCiZstrRAhWcXHLfLppDZ8H9+fGL91WSy4e
         vKHp68eK2f7R8dRX24+c//fuicNlIalmRntlv17QGAnr6O+Dzfz6stwO4jkE9t2uqH4q
         kPu6GNXV9sk61VbGgrqB11Rb4/JNb06gtcve43VBYYhYmjPIytthNHlEaAxPfWjbPPdo
         2SSA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWVX+zqVcFmWBRh7zP7AmtzUc3pGoRTJ6epp3UvE/Q8OF53fSVx
	Y4k8ICNdNI+QAM/1v67EALc65w==
X-Google-Smtp-Source: APXvYqz0brXcl8/1BqTfl0vSORKlSuflEa+WwUbU8acFmTfQk6/ObZq32anlTcGc8q6QLtLQzec88g==
X-Received: by 2002:aed:3e3d:: with SMTP id l58mr48132068qtf.382.1560822082500;
        Mon, 17 Jun 2019 18:41:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:8181:: with SMTP id c123ls2926826qkd.10.gmail; Mon, 17
 Jun 2019 18:41:22 -0700 (PDT)
X-Received: by 2002:a37:4b56:: with SMTP id y83mr48757251qka.338.1560822082317;
        Mon, 17 Jun 2019 18:41:22 -0700 (PDT)
Received: by 2002:a37:48c8:0:0:0:0:0 with SMTP id v191msqka;
        Mon, 17 Jun 2019 18:31:48 -0700 (PDT)
X-Received: by 2002:a37:5d44:: with SMTP id r65mr357751qkb.221.1560821508252;
        Mon, 17 Jun 2019 18:31:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560821508; cv=none;
        d=google.com; s=arc-20160816;
        b=jsXkPQgGIyOjH4ljh7CwUoyMQYNYwTAPpg1saadT86gr9w0T8vL6eSVCS0PAUFIlW9
         IsWVrSvwKnva81ieeBSIrLDeNsbAGnzsR8MnDYukeJIaFEhS+m+PbQ2VI1g25H4TIHl1
         O4ej39s1t+nzvsStX6E7tIAt9l15bOvjuDvlAtprTyfU+rv8OQ3qqZNacVW/1QkaSfbl
         bDm0A3WKu4yUcVxUK38eWbozsW6otbc1p2tQpj6YPZ3YwkrS+kqhKwBaorFVOP4SfxaO
         CrKPS8GJSQ24vYse2BUSIie3vtx+trx9v3TFtIreVzFLLgcjTafyM3OrqkjrLZUkg3jc
         4nxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yOPVX+YNuHzebz9TKbTGJyOFzAXq8NyXH/xz6xEoeqE=;
        b=cn++uJIXFvBGrzJ64U7TXzMFoVBaW6J+QaUDwTrqxWYwl4UKSx2BFYjaPvrhRDm1JF
         sLo/+SQ5VX31G8r6+or9JWXDcHvh+acfb0II4OV4aq5XzxldmJr04UCXghUCgY+hyQDx
         jYlJAKT0odC8TyOdMegT+CuH9MUv8z82qNy1V6eGfXw96xVehbxK7YmDoVujX7TSNG49
         Co8Ch9hDs7exa6cyaqYzP3VuA9Ncm9HmUagkW+CNJTM1HXeZ6xwztc8TqrG8/tASLvHk
         hERn6wDaiSe+H0GexMJSJeDM0O02eTZZ/VRhz8E5yrI/b9fkw+qgwjleZPFCangSWiXM
         mbEw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PHmJKwG+;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id v203sor8307721qka.50.2019.06.17.18.31.48
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 17 Jun 2019 18:31:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a37:660b:: with SMTP id a11mr91438305qkc.342.1560821508002;
        Mon, 17 Jun 2019 18:31:48 -0700 (PDT)
Received: from localhost.localdomain ([186.212.50.252])
        by smtp.gmail.com with ESMTPSA id c30sm8340874qta.25.2019.06.17.18.31.45
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 17 Jun 2019 18:31:47 -0700 (PDT)
From: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org
Cc: Marcos Paulo de Souza <marcos.souza.org@gmail.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org (open list:USB MASS STORAGE DRIVER),
	usb-storage@lists.one-eyed-alien.net (open list:USB MASS STORAGE DRIVER)
Subject: [usb-storage] [PATCH 2/2] usb: storage: scsiglue: Do not skip VPD if
 try_vpd_pages is set
Date: Mon, 17 Jun 2019 22:31:46 -0300
Message-Id: <20190618013146.21961-3-marcos.souza.org@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190618013146.21961-1-marcos.souza.org@gmail.com>
References: <20190618013146.21961-1-marcos.souza.org@gmail.com>
MIME-Version: 1.0
X-Original-Sender: marcos.souza.org@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PHmJKwG+;       spf=pass
 (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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
---
 drivers/usb/storage/scsiglue.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 59190d88fa9f..0a9520780771 100644
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
+		sdev->skip_vpd_pages = sdev->try_vpd_pages == 0;
 
 		/* Do not attempt to use REPORT SUPPORTED OPERATION CODES */
 		sdev->no_report_opcodes = 1;
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190618013146.21961-3-marcos.souza.org%40gmail.com.
