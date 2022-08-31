Return-Path: <usb-storage+bncBCS25756ZQFBBUP7XKMAMGQEQZNX3CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 1410D5A73A6
	for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 03:56:35 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id s3-20020a17090a5d0300b001fb3ac54a03sf5394335pji.2
        for <lists+usb-storage@lfdr.de>; Tue, 30 Aug 2022 18:56:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661910993; cv=pass;
        d=google.com; s=arc-20160816;
        b=VL4fyCjkDxI9wp/9TXL/YTc6lxcuVC3ePB/heKcZJ25QLZwsWx4YQT71eVhkr9SxRK
         3uCTX1BVbmHvxSKNGEO9mxJRhUocJNQQkVjuD78SqZJtEB04UWGxb19TG1k9cHVSrfC0
         BSrDkGsoajOcqft7UxRZCcmriRtGJLkXeKQhdz1/8b3FDcETJIMde15QHwXx5OvD06Sg
         O+Bs9HP8oXRmKn9UCkDlRjk/GBhVlhevAA6LZc/RDHDfP/zjMTT0mwwHpg2sjTB9bj5C
         EXE+XClNNXxbvyPXwDj6kSVFRedK8aiv/H1LBOYBOcqpJZN9KcV3+K0VRQs/NWvUMdT3
         nE0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=H2aEAHMY89qGvCF5jg3PP1cJlacugLxCeGiCFCy8rmk=;
        b=CpbxV678E8tEQdGWIBgWEIMAGFEnhoidDNR0rKUFedDQMDyXMTmZ/X9TKnED6P3UzL
         zg2zY/mmG0TQw13q+TcsOuCHIgAuRVjXufEXDwrIKbaKuo7mzdHy3njafzTyVg+8S6We
         L0i9qinEwqyiKoiMvosjan6oWBKS3iyt6G00JqXo8P6qOCWe1GqhRIGQzg9Ih0wqKYza
         otzmWyx4cPRvfZvHdegSf8nT4oYXn6PdpN4pBba2mUJO8F3yIW8R7vIGvo0AHV60QPG4
         DW5z33nQ0bhKmXMcEY5s5slUh47z4hxj/v+sZRpEDpRjdIaCK37jwa6+VWUSeRdC/dmd
         8Dzw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc;
        bh=H2aEAHMY89qGvCF5jg3PP1cJlacugLxCeGiCFCy8rmk=;
        b=Q3QLrkIBVKUDh9+JOQu04zIPkyZdoIipDWM653sK/+OlvYc2+vWYMHfgaq69i8pXNa
         qg4aFQmn7QGNHg38n+M4r+Ncc9cZeeJbhRZvpqMfpzCurzzl5FQopRMrUQfJ4M1ulL5z
         6hI4hPtgdScSQK2bv0AenYaMkzXGG8aKpfqUw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc;
        bh=H2aEAHMY89qGvCF5jg3PP1cJlacugLxCeGiCFCy8rmk=;
        b=3dr5TyhBRnayfGrwdd1bo0VC7WVephDBIZsoG/0gieE2xjxsd+4CpxKrF6NFWMxDN+
         GTn9n7h13QJAVJjeX+YahqAlcqhp7V7vUiloF48/coCEhHK2xxBltbQj7TmkQbWfOj8g
         1LBIWZDR+Nsr5hWqhvFOgebL1kBdXpjsHD1r8aIUMbs1Rp4zfZj5o5EG2hWmHl2rbdRz
         2Pvcgrz0H6apTh+qrSpjMpx+rtw4d8hTiUfHmx1gvJI82UZ2/PaKekHhiDT5FL7Xrjge
         53gkXiBcllD97Foh17yfqDX6FEFpszRpGbTzxIyOi0eyjbQP2nWg38nO6MaGgRwRClR/
         TD+A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2T9x0F7kinaENr68sTl1XSfrpM90S7d2tnugnO/lxdo7mZrF6j
	ATEx1L+wDdP2njJvcCTsv/+NwQ==
X-Google-Smtp-Source: AA6agR5S0deHlljkiZhNygY/kz209pN4nSsDGTr3c6Kcz16+WxcD3podyNLYn9QLAGsNXa022kiGUg==
X-Received: by 2002:a05:6a00:b8a:b0:537:f81:203a with SMTP id g10-20020a056a000b8a00b005370f81203amr24001817pfj.80.1661910993526;
        Tue, 30 Aug 2022 18:56:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:6a86:0:b0:40d:4b5d:70b8 with SMTP id f128-20020a636a86000000b0040d4b5d70b8ls6818082pgc.0.-pod-prod-gmail;
 Tue, 30 Aug 2022 18:56:32 -0700 (PDT)
X-Received: by 2002:a63:4b06:0:b0:429:9f07:4cdf with SMTP id y6-20020a634b06000000b004299f074cdfmr19912043pga.330.1661910992682;
        Tue, 30 Aug 2022 18:56:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661910992; cv=none;
        d=google.com; s=arc-20160816;
        b=dQWrtAPXWXlV3XRvC3uAnoMBbxDWvp/vtFmUyrLlZNAX6yjQFRB29E67+lFFlZZjw+
         cHvBArAVlJdCbGho3OwqfWVL1btmXfNkPPJD5TLSIaIgQ74gGVmDpOdYaXx7SW3fJLT/
         5+JQw6ILlk7zeiGqxviVI/Y44nJ/b6efZ/MVI3qxF8l0mTSptfwRWla7nPaDEraE6Iwf
         fPYueMmMTc/Y38Iprcz+kqwKup1CZEA/NqNxji7yivDQgg1xQRr6i5+jt5J+eVYcnLpi
         xFmLWUvJ30nl+WfdYG8OiTL4gnWl2GOl5ekDQocTXFmioVUpPGOWWToI7egC4PusrcEL
         wQCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=DCERc5v/WlF/Sxcqft1BRtDFoKcKt8bXAYRwa232VTk=;
        b=Avx9DLtMllyWtLvuhyR2U+3gGsxiU1Par3WSeiz85Ne67n5Lr4u29nhAyIFxHNpiwN
         sOQ2vpvuTF2YQjwLRLOrS1fBx25qTOYxZYzs4RrTRY3EIVQrLLhOXj9URcJTEr2NZH7M
         E55g9j54vzFdNhQkfRfUCpCQsneoifBx/wVinA4UvQLhUrBHUknI/SWEhq6oGV+M+2va
         4VORlMS8x/qdImSkbyY0IWUY82L3UVXlqEFnz52CydUUANDuZA2mFn+fCrG0EALrILa7
         CAE7izw1sren8fOywwtnIctfGYDBwuZoHUyZ5/IbnfZBoUNcTdxBgqwaX+V2lArT+kxT
         Ne+A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id mn20-20020a17090b189400b001f534082156si556636pjb.183.2022.08.30.18.56.31
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Aug 2022 18:56:32 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 2be4833337b1422a9d0e2f0ccfa45b94-20220831
X-CPASD-INFO: 7e3fb8c83900468d85e2043c88a2527d@gLVtho9qkWhfWXJ8g3mDnlhmlWJgYFO
	yenKBaGNiY4SVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBmXoZgUZB3hqdthphmkw==
X-CLOUD-ID: 7e3fb8c83900468d85e2043c88a2527d
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:6.0,URL:-5,TVAL:173.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:129.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:6.0,CFOB:6.0,SPC:0,SIG:-
	5,AUF:5,DUF:3607,ACD:65,DCD:65,SL:0,EISP:0,AG:0,CFC:0.435,CFSR:0.049,UAT:0,RA
	F:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,E
	AF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 2be4833337b1422a9d0e2f0ccfa45b94-20220831
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 2be4833337b1422a9d0e2f0ccfa45b94-20220831
X-User: huxiaoying@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <huxiaoying@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 2096684557; Wed, 31 Aug 2022 09:56:46 +0800
From: Hu Xiaoying <huxiaoying@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: linux-kernel@vger.kernel.org,
	Hu Xiaoying <huxiaoying@kylinos.cn>
Subject: [usb-storage] [PATCH v4] usb: Improves USB2.0 write performance.
Date: Wed, 31 Aug 2022 09:56:24 +0800
Message-Id: <20220831015624.1119578-1-huxiaoying@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: huxiaoying@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 124.126.103.232 is neither permitted nor denied by domain of
 huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
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

USB external storage device(0x0b05:1932), use gnome-disk-utility tools
to test usb write  < 30MB/s.
if does not to load module of uas for this device, can increase the
write speed from 20MB/s to >40MB/s.

Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
---
change for v4
 - Update two email addresses to be the same.
change for v3
 - Does not send html mail to the mailing lists.
 - Update patch, which sorted by vendor ID and product ID.
 - Modify discription, correct some english words.
change for v2
 - Update discription for patch.
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 4051c8cd0cd8..23ab3b048d9b 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -62,6 +62,13 @@ UNUSUAL_DEV(0x0984, 0x0301, 0x0128, 0x0128,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
+/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
+UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
+		"ASUS",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: David Webb <djw@noc.ac.uk> */
 UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		"Seagate",
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220831015624.1119578-1-huxiaoying%40kylinos.cn.
