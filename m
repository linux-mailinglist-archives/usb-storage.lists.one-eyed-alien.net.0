Return-Path: <usb-storage+bncBC6MZUGU7YMBBNUP4CMAMGQEAIGKQNI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 3307C5AFA41
	for <lists+usb-storage@lfdr.de>; Wed,  7 Sep 2022 04:53:44 +0200 (CEST)
Received: by mail-pl1-x645.google.com with SMTP id t13-20020a170902e84d00b00174b03be629sf8875732plg.16
        for <lists+usb-storage@lfdr.de>; Tue, 06 Sep 2022 19:53:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662519223; cv=pass;
        d=google.com; s=arc-20160816;
        b=K4w3TexUlhPT/1IffQQXhzPDQQtuSNhchp1g4UrtkB+E/aCFnKe55Yo6t0Agh6k1L0
         AoqAHOxdDp4unobcsG2iHJJGkvWPHCHr0Wl7X2u7mN2v+HlnI+E7lq8EupkmCQqqFMyy
         cHSBUVAySFPpNyYFQxfZ6bIV+8rSR87TL+y/YF1RvQH91TqFyyeJJZVl3GjO8xMASqR4
         OK9MhmF8TQda0JKqzM3IN5F8cJpHz6KkZnXbbszks4JHtDCDi75pMZo2NLi2NaPHuLs7
         EhIKqPxrkWuTMGp+na0Kbs7S60Fw8suONdkMq9QW8/WAXKwGhd0WSJRXQ6MEC2c75sln
         tiqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=JjKVkIM1BVc76pephDjpepSN5C8DvT98wtAE5lyOkSY=;
        b=P66eJroYcDnyK++PaS9VdYIgJpjr68yGU6/6YUDuoLgQSQxVPYlI4w1ZkAjs5gSkf7
         kE+RVOarLr587b4fp83hrtwJ5yDF/e1H4yceyz3HAGmqEMi+G9sD6W6xKrQJKPyiYtmJ
         gWDtUph8qJOUwD1c/vDhSeSHHjRHhWf2sXtO9Rwx+/yf7du6z095jZffdXFiXmXaR430
         s4lrUiAuReDeRirQXkB+rG0gxq6xkRewaqQq6CQ0vOy/6QGphtrKdO3xxw1AVSuvlUPJ
         cRVl5OWzs6iDP06gbmsi/NcQxcyVZeLLnja41DTmedbnGfnqtCRAA7K16V7ifEGegNHA
         fGBQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=JjKVkIM1BVc76pephDjpepSN5C8DvT98wtAE5lyOkSY=;
        b=NWsAEGw6z+NwF3E0JknRV4mUpA4MoxYlD/J04qgp+2NqV3zUjlSqoFr65+/Pz//SYa
         cMT1a+JQCehX4t5zKL+wdmY84kys/1SN8hPYteQz//w3JwSF7wGsI9I36Kc+V+5HarNx
         1wUjS6ij9bFaK19rwV51E9h47yZQWJ+Ue2SJ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=JjKVkIM1BVc76pephDjpepSN5C8DvT98wtAE5lyOkSY=;
        b=wzaLtrZJKquftoxZ7gC1HT4IjC4vmDAWUUJ6s0J2jjQgSyIP+B6Pnf3Jrn+hCXcpe7
         i/Lz9EJjRUQC/FBb5LwcSgMcteTMPz99CwDFFp7AATW5oOeqJ4lf/LIbN6uxjRj+Uk6D
         pJUv67U/ZLKKpJLMkZayGnN20gfRHFSDjj9KKgxTaBJZbeA6g0asQeuibYaoE62wPYTW
         C8oUv8MOPopy0qcW9yDzOEwBgnOXzpTzltBlTWwN5BHQa3E7dkvoIJj/kdDykEcIuNh0
         TIsmKljRnRWlshi5M/hQmFICJzyhAOiWsmlQEwtPgv/Ar5KO3TybeGV7YszKWaUTntzk
         jCYA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo33XccLtnMhbufkZDTLnDN/jbIwPkBVZC+NwfdOgz5yeVRHHc3P
	2w4VsEXMycqf0i1D7hv9nlB6eA==
X-Google-Smtp-Source: AA6agR7LgHPfvIj6KM3gVgNPMqg8XpCxTnNUQPNZExYfpIIt8zCpBGdZLNmK6wXTka2BxFVJ/MggDA==
X-Received: by 2002:a05:6a00:181c:b0:538:766d:5cd6 with SMTP id y28-20020a056a00181c00b00538766d5cd6mr1463955pfa.33.1662519222764;
        Tue, 06 Sep 2022 19:53:42 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:d550:b0:16c:2ae8:5b94 with SMTP id
 z16-20020a170902d55000b0016c2ae85b94ls568964plf.0.-pod-prod-gmail; Tue, 06
 Sep 2022 19:53:42 -0700 (PDT)
X-Received: by 2002:a17:90b:1c81:b0:1fb:887c:f82e with SMTP id oo1-20020a17090b1c8100b001fb887cf82emr28224840pjb.92.1662519221968;
        Tue, 06 Sep 2022 19:53:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662519221; cv=none;
        d=google.com; s=arc-20160816;
        b=QuKl9rjFhrkqiMTzAv3XVOSRRDdYQk6VECiTsCgoZGKcaSEh0EDU1ACO0sY5tQMEh6
         JtGcwGs6fmnexBtFk6fzb8E+W0bdzakiuAnzq84KrV18/wBjIpti7+2n96aLT5yovrx7
         hDiXBTbxtoFTDGPAgx1KVXaQhV6dX8wZjcht3ykECXfPNMC4KmMxfLkE0JdJx++K5ppD
         bNE9tIQAIbLSJvUceszjvj8DcjdR1rdWr0OWjmshIfyCOfWGto2dlFRid3QTt4BZyQXf
         V8bhtCEzqsL3+yZve6ktnAbbbRpt0FrbTApZ5HLA2riDZhicZe5vUHLTwuf8yLBFVd0s
         /+TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=J1BKigyGLoAhJrgZW7dLyxpmYBXPZu5ml7PNi4VRo1I=;
        b=yfJl7n4RdFwXTH0RJF+6RZEntKIBKSdEDCbPToK0lDgnAB8DNCil40mMZ6M8a9KE6x
         q9Xo5EL0IPh7VN8YyPIqG91SIe39NALTK2UcalGLNaSxi3jU6XA2zWvTRoNda9Fb5zQk
         gvUHwyelw5uIUHtX/4v6G4Bsw3TD0PULWcJ0AP7PbzAgKXw6FdNeCbkUqjtTaJ0YzG2T
         cnzL+yHT23SAK1I6Vy/Y9MO7cwFDoTOUachWa2pH8//4cSskP2aVadRBoe04IFTiBOn2
         VKys77d50TV2VJALt+gtpK2zsX2oDXkzmpT2UM9VJNk7NTrTt/Nz5O48/kQmPEdAtu/3
         HinA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id r134-20020a632b8c000000b00434eb9eb8fesi215050pgr.266.2022.09.06.19.53.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Sep 2022 19:53:41 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 08efede753124c908b718eaf80eb6add-20220907
X-CPASD-INFO: 9101aeb3b46a4312ae97c61e7ebe3564
	@goFqUY6XkGOOVHitg3Z8bIGWaWeTYlG0eZ-
	ClmFlYlSVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBhXoZgUZB3iHNqUZaTkg==
X-CLOUD-ID: 9101aeb3b46a4312ae97c61e7ebe3564
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:1.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:150.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:1.0,CFOB:5.0,SPC:0,SIG:-
	5,AUF:17,DUF:4220,ACD:72,DCD:72,SL:0,EISP:0,AG:0,CFC:0.203,CFSR:0.151,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 08efede753124c908b718eaf80eb6add-20220907
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 08efede753124c908b718eaf80eb6add-20220907
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 640301292; Wed, 07 Sep 2022 10:54:06 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v2 1/3] uas: add no-uas quirk for Hiksemi usb_disk
Date: Wed,  7 Sep 2022 10:54:06 +0800
Message-Id: <1662519246-18397-1-git-send-email-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.1.0
X-Original-Sender: zenghongling@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 124.126.103.232 is neither permitted nor denied by domain of
 zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
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

The UAS mode of Hiksemi is reported to fail to work on several platforms
with the following error message, then after re-connecting the device will
be offlined and not working at all.

[  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
                   inflight: CMD
[  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
                   04 00 00
[  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
                   inflight: CMD
[  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
                   00 08 00

These disks have a broken uas implementation, the tag field of the status
iu-s is not set properly,so we need to fall-back to usb-storage.

Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
change for v1
 -Change the email real name

Change for v2
 -Change spelling error

---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index cdff7dc..a6bf87a 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -62,6 +62,13 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
+/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
+UNUSUAL_DEV(0x090c, 0x2000, 0x0000, 0x9999,
+		"Hiksemi",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /*
  * Apricorn USB3 dongle sometimes returns "USBSUSBSUSBS" in response to SCSI
  * commands in UAS mode.  Observed with the 1.28 firmware; are there others?
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662519246-18397-1-git-send-email-zenghongling%40kylinos.cn.
