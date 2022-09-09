Return-Path: <usb-storage+bncBC6MZUGU7YMBBHFU5SMAMGQERLNG7JQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 168E05B3571
	for <lists+usb-storage@lfdr.de>; Fri,  9 Sep 2022 12:49:02 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id k4-20020a4a3104000000b0044607fa7d05sf626308ooa.21
        for <lists+usb-storage@lfdr.de>; Fri, 09 Sep 2022 03:49:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662720541; cv=pass;
        d=google.com; s=arc-20160816;
        b=TwG7Zvv/1gr/02GxRe5SR4NzPl4V/E9+qp2K9TAWqr2nwCCLoJvI66ufS/a0RSfoof
         Tc5r97RDt3jBYep82gY3voFdDA3HhEikEdvx/qfscbAXiYdlctjiRVGEZJ2u3j4Y5ckK
         wypkAI9krOhuaQIr/8qkl8KS7nU0qMbqHXkF6yPp93btKdkpfJb5RJA88yCer1cZl74V
         G1NxGMj8JLym3IWrFMBklReRFmNApR1EHin5okN+Vq2i/m25tpHQqMGye8DVHAc8qksW
         4CRoU2plpYLxd1cjSn6+kkW2Nrncv4fcHotAlghXkL3hySd3TFydG0yrl99sCRudIbU7
         R7jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=FjkzfsIDHVdv8F9OUj5kfPQqbfg10qhcDxbCq67KTXA=;
        b=CAJOhKZKrXh6zPS+KQSrxlp5Rg2R79LNh0KlgGhJYowf9tBRUHLDRo1i9UA4IrB960
         WTaF74b37eFz3PcMowjuPqLBUiDvz2PiPyJ/CGe3fvCbVFovY5iC6POmfk8cGFbyOjtc
         es2JQfFitW3MPj7b/YR4/CJVy3CkOeeMYTZ9+C/fdspn4Vu1V1YJCPdfW8xhn6TWYXdS
         k2r5anXGWXE6pn0dSZg/t/ipG7V0Nx+VYkQpx2JXdsZX6DQhg8fJvdjaKa1UMiGE2PiP
         rZOzihZSRixseoCAGI+5XqwjLG6DB34gjXP+/+3mW1wmSc9NAg6DTuCEQQ4dcGH5kbKB
         9OqA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=FjkzfsIDHVdv8F9OUj5kfPQqbfg10qhcDxbCq67KTXA=;
        b=day02L1merl96pJegqOrZvcGxYK+mf7GxnBfCEarP40sKerVcUm/0ymTvGGvxG9MZG
         2ZnbevQQ4fp8epGxouNs7lFxwl23DCpYREDT4zVxapY5a+jlWNE933M1fUUbBptS/Vu9
         bLf5Ptn0HCJTYm+6C7efUSTX9AtQgNNeQIfrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=FjkzfsIDHVdv8F9OUj5kfPQqbfg10qhcDxbCq67KTXA=;
        b=HsSAeWLpgPxcIRD012g/gkPQ+wimceREi2isEClYJkNADOQ1S9Z1k/xiEUjnyEMavF
         0iYW3fGqvX92+3TXP0l5XI+/SGzgBuK7lxvMha6iPIcYctsxCzhys+FSSx5Wd1x4gPMb
         RElB7tZRfE83kHdo19r/QMNUWisUedz1QaE6G9wHmMQeNhag0e9jAFU4PXu45I3OWKTF
         GOg/CXvTHwxlzzXuSzkXXGetqvqXRj2lh9RdZgeSOiUfrd4hQp8fcTK5iry53c6hIIWT
         7umJaj5LYiei4DX+/zf5eFQbuod9X/ccS4VI48n0kN9hlMZB+Vi/78w/wym4WAtFAz/O
         zyiw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1ZDuLVgULeCBgG0sZZmQ3xAonTSXs733on6PvCPvl28VEG9jo9
	m5sRKNpU0kEtRGpIJ1iH5ufX/w==
X-Google-Smtp-Source: AA6agR6DLujBcHGBv2FawlQ9yCIIKqQA6+hrktQIIA0XLZu9q6Vao27vvOyIQMKeDZbTD9fTt3qRIw==
X-Received: by 2002:a05:6808:1688:b0:345:ea9a:2954 with SMTP id bb8-20020a056808168800b00345ea9a2954mr3290148oib.199.1662720540755;
        Fri, 09 Sep 2022 03:49:00 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:645:0:b0:344:8f41:1800 with SMTP id 66-20020aca0645000000b003448f411800ls1298913oig.10.-pod-prod-gmail;
 Fri, 09 Sep 2022 03:49:00 -0700 (PDT)
X-Received: by 2002:a05:6808:f06:b0:343:2e08:ce93 with SMTP id m6-20020a0568080f0600b003432e08ce93mr3166815oiw.273.1662720540276;
        Fri, 09 Sep 2022 03:49:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662720540; cv=none;
        d=google.com; s=arc-20160816;
        b=btP2/f8J7PEkkAntZ0AKZ3h1HdQGXpislSCk0N6oXQ4D+7ksYXJ1ZKXaDwpxEa281t
         vX7iofuGbnFcnGOjaizVb2V4RdCrqLOHe9Z8o7Tsyj+MV0/AqCYAylYeUAtDHAZC1v0k
         /DkiHRjH7VjZJBlHRmb2KIxVi4kd7S7V5hZRACDA+a1ks6zUcwIFYq9PR5mM6m8M0kok
         gYZsezfRFtVilnBhjbKgv31+Dcre941zytipSAu48PoxStWF7Ct9xj4ZG1iWgmlP+aZ8
         aaUz4Nbjkf30m4NA7yarjgchU/x0EEzJ9vzE0fT1/mUj2+ZM2VNAqfrlk+/rPyaIVzfq
         iW3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=7Wp94SgSoUfjDH/4sbVBy9KzzXhXZkRD4cKmVE+TMgM=;
        b=ctwGt0dCh2WTZq5OB8BdNOhFMS2OgfhXeYhS4dATKdUkOoG+BQCHtGsmiyYQAZZ/9b
         IH4o5r4tIVzBsoYJEHM1e5uS/TY6JPsVuN2qetLdqQNxcnQKqOauHbb8gTrwTeVkfsv7
         YCMxWQ1CjOo9Kxofo1BvlFUD0CvsVYwdWErftWrQPwda/r4JDfsaE7RfTrXlwzwO6lg0
         ZtUbXHsJeeDUChsQPpz0Vh4n7VDyLIG9Tw8v7WCcf8ks4mIHH1ZvOfZW1kWovyYF3HEx
         1bzVH5+p5ynserpdd2tD/5p/mm1S2eNl7VUzV3fDuo9GwhTz3ocSpE0vcvEdz9DujbMM
         XCcA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id v16-20020a056830141000b006391a419a5dsi135880otp.296.2022.09.09.03.48.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Sep 2022 03:48:59 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: cc1ac78cc6bb441cbbe3951b0b09339c-20220909
X-CPASD-INFO: 744455725b1b42ceaa486cd0b68a0827@gIRuVGJnZWJhgnOug3Wun4GSZGhmj4R
	_pHBYkV5oXleVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3hnZuVGVjZw==
X-CLOUD-ID: 744455725b1b42ceaa486cd0b68a0827
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:163.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:31,DUF:4487,ACD:75,DCD:75,SL:0,EISP:0,AG:0,CFC:0.266,CFSR:0.109,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: cc1ac78cc6bb441cbbe3951b0b09339c-20220909
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: cc1ac78cc6bb441cbbe3951b0b09339c-20220909
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1841450806; Fri, 09 Sep 2022 18:48:19 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v4 1/3] uas: add no-uas quirk for Hiksemi usb_disk
Date: Fri,  9 Sep 2022 18:48:15 +0800
Message-Id: <1662720495-32218-1-git-send-email-zenghongling@kylinos.cn>
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

Acked-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
change for v1
 -Change the email real name

Change for v2
 -Change spelling error

Change for v3
 -Add Acked-by

Change for v4
 -Fix version error
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662720495-32218-1-git-send-email-zenghongling%40kylinos.cn.
