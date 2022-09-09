Return-Path: <usb-storage+bncBC6MZUGU7YMBBP5U5SMAMGQE6YMMEDQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x46.google.com (mail-oa1-x46.google.com [IPv6:2001:4860:4864:20::46])
	by mail.lfdr.de (Postfix) with ESMTPS id AF12F5B3583
	for <lists+usb-storage@lfdr.de>; Fri,  9 Sep 2022 12:49:37 +0200 (CEST)
Received: by mail-oa1-x46.google.com with SMTP id 586e51a60fabf-126ebb05e8esf700585fac.11
        for <lists+usb-storage@lfdr.de>; Fri, 09 Sep 2022 03:49:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662720576; cv=pass;
        d=google.com; s=arc-20160816;
        b=M5of1Jw5PIAGqAW5nA61xX3udt0bWsEwqsMvnCiUg2wnnfhmHjEmRWV7TXcTLOdwwp
         xC8l1m2PTdjtoqQu9iwu2kGoP1rcm8NpGBlHX2P7yf0wXJ6araKzwnUgDVVsV1vxL949
         8GOL4vibjB1szlh1c2cU56aqfFvWPy/bO+hiPoWinhwpX5Rw4TPGxH1sskhxOjSlacAj
         542kXCP/BRnFly13a06s0AfCh49Juu4w88bHRcC1r9Q1FaFcwFtRAG0yeTbZJXpJ+Q8K
         YyIEfRmh/yruAg4oZhTsOPNJGV1den+JGGW869PWRRvl1SxdY9AUvJTjKLSN1PkdiBzr
         0Fzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=iB1UnmhtI/41ebKxj+jzjO/FWsG0btsuk+ZXWlRf9Rs=;
        b=hq6kq6kPG+onLCxqW+PJpdOYIGMIwEh8u1dhmjUc/IwBczhyTA8dCMiAwgDy5f8CNl
         6LL6NNZvS2dHD6Pl3ga3Xh4DxnyCcNs0AFXXz20Xu88HI/uTOcWC/L6HzQKeFrwCQE/0
         jY2hB2R6MD9sIblEdLg8INuQPA8+VxQzpBGsGhrUkGXyO32R5bP6gYPhVMqd015TJ9JZ
         4xbWp3Z+7sB0bksxiB2kanEmU6vGSc/l27uj/8NW/w9JtOYMG2CHg4m1850aSqIesXhc
         o237XA5eQCmYaBnY9o6AkbyTjMwEdhwgZcLCZWWygrxsevgQOcNrnzM+0T/dPRgioU4I
         KSQw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=iB1UnmhtI/41ebKxj+jzjO/FWsG0btsuk+ZXWlRf9Rs=;
        b=SLcJ3TErXToKp5zuseqElA+P0JymaYgm3PI4s2tvyQeJyV1rLyROFYaX1ke8uqbs2K
         UzUVsqguOIer4tNxR+IHeZIWdlGDjRdDR1Em7MbG6CpSaCDFZPpwn7fUC3uSWYPSq8L8
         Zg2PkMTtZFwvkC78UbrW355AMrrnfdJWT3PXU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=iB1UnmhtI/41ebKxj+jzjO/FWsG0btsuk+ZXWlRf9Rs=;
        b=w1Sp8QqColVngfYcgf4bvbW5+jKlqURZKNX+6++g9eRO16WFcXIuPg2//OgczqaDEY
         xrMWpeUlnt/xfNXSwED3Jc1anGDWvXcIDWwIp51izYZ/7j8nOV/FqXr/yXv55ncno3WI
         HlygX4M/yhuRkLOIOdoRVzGUCLZorD2Lb37sY+UXancyJhbG1p1QV2ekrQKveqKqs4nX
         u4GqkKiFnOxzqIFy3n1xVtRFfC1zhHXkfalGyP+LOxnz3oAyh4dYhqIztROjPJmyd4Md
         aQ+vNAFuaPF6vIDG8/LO4RMVheOtPS//Ah04eQwOtj1gzhwRIc3pftZROIE/DQMZsF1a
         TG6w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2/fCbSA9fIdFWKpuy14DmfDvCJX9Q7l9AqBhIinCrdEcAAbcCN
	ERtbtFDVoT9KOP/Jr12I01s1nA==
X-Google-Smtp-Source: AA6agR5TJuex5VS1sRGBlns1dogGja2+u9EjQE82WH/ACmcTPlXcQP4+0wrnd9GsP6jsatWlJQ1vqA==
X-Received: by 2002:aca:2b0d:0:b0:343:df2:772b with SMTP id i13-20020aca2b0d000000b003430df2772bmr3193178oik.148.1662720576051;
        Fri, 09 Sep 2022 03:49:36 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a54:4d9d:0:b0:33a:8505:22b5 with SMTP id y29-20020a544d9d000000b0033a850522b5ls1301153oix.7.-pod-prod-gmail;
 Fri, 09 Sep 2022 03:49:35 -0700 (PDT)
X-Received: by 2002:a05:6808:10d5:b0:342:fde4:3766 with SMTP id s21-20020a05680810d500b00342fde43766mr3327423ois.123.1662720575600;
        Fri, 09 Sep 2022 03:49:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662720575; cv=none;
        d=google.com; s=arc-20160816;
        b=QINWlKrQUsG/i+0P/4k40U1g3RgOyzNYGF3r2JKOEs5a3qAoctOCD4+iDRoe2wQVlS
         z+HEzK2kl2zIfTYA2PLeH9IDPblcNUzVthCmyL+Cy/jw1jYDNclkhPkcjsYoALbh5xnw
         /HOeFMCbIOxTVEPlHezx1Ubtm/VLdMAdmcOamOyBHO5aKbKutYPn6LpphIIKev1skOVV
         Hkx+3kWsaXV9nh7xR4UkHHVOJaBYf8EBnWwQ945hPh/X8ie5oXFUfjrf+5zeoelEzshQ
         8jje9ECTvGxzo6VJ4qRuNo5hCfJ2daQoJosoi4Ucu9Ldhyv1jeZuKCDl4rzjmMmnWrtC
         zfaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=HhQ5CSKubYU7VR83+6abpxBfjIKTphGgMGoqZhYGHjs=;
        b=Z2UzI4yMCy6q3OyKABwLsEZLb872XOKrphOwcL8gbhOPceyU3QJpzyzh5s9RGIiAW9
         T+UK7ZpoiDTFbd9VLF/4PJfC/rCtJ0cBFzBtDkPuGR7uVHxw8doBb7NCc81QavCKrUZS
         k0eiLEXVDaM7p0HQ3rIUu42/uOGXEb4h0Yb8I993CbeR1fBnzDiBLb7rl1tol0wREukx
         D2u5rt303mqRtjB3cmVXrMYLavfEGBoHBisZrzes+qAtqVjrH1qF96dNxEKG1QHbj71U
         VAoM8zJymEEBtnCTfa2cNLgHsXNA4BNb6tVftHnaWOosSHZDEXxVM9qOjQnlDRSa9pzh
         dWvQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id d1-20020a05680813c100b0034d7db12e51si180207oiw.256.2022.09.09.03.49.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Sep 2022 03:49:35 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: e6cf52554b9849a0ab2925107e7a17fb-20220909
X-CPASD-INFO: f457cf9c81904c409c74f5162a6ec4d8@r4RvV5CYZ5NkUXt8g6Z_almUZ2SWYVG
	FdJtWlZFkkFiVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3tXZvV5OUaQ==
X-CLOUD-ID: f457cf9c81904c409c74f5162a6ec4d8
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:136.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:32,DUF:4488,ACD:75,DCD:75,SL:0,EISP:0,AG:0,CFC:0.385,CFSR:0.077,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: e6cf52554b9849a0ab2925107e7a17fb-20220909
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: e6cf52554b9849a0ab2925107e7a17fb-20220909
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 60682313; Fri, 09 Sep 2022 18:48:54 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v4 3/3] uas: ignore UAS for Thinkplus chips
Date: Fri,  9 Sep 2022 18:48:50 +0800
Message-Id: <1662720530-32313-1-git-send-email-zenghongling@kylinos.cn>
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

The UAS mode of Thinkplus is reported to fail to work on
several platforms with the following error message:

[   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled
               endpoint or incorrect stream ring
[   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000
               1b000000 05038000

Falling back to USB mass storage can solve this problem, so ignore UAS
function of this chip.

Acked-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
Change for v1
 - Change the email real name and the code worng place.

Change for v2
 -Change spelling error.

Change for v3
 -Add acked-by

Change for v4
 -Fix version error
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 8a18d58..156e89c 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -198,6 +198,13 @@ UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_ATA_1X),
 
+/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
+UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
+		"Thinkplus",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Hans de Goede <hdegoede@redhat.com> */
 UNUSUAL_DEV(0x2109, 0x0711, 0x0000, 0x9999,
 		"VIA",
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662720530-32313-1-git-send-email-zenghongling%40kylinos.cn.
