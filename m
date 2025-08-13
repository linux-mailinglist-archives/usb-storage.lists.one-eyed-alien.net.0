Return-Path: <usb-storage+bncBCENHXXO3EBRB2UD6PCAMGQE7XIYB6Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD36B25016
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 18:48:45 +0200 (CEST)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-30cce8f09f3sf30316fac.1
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 09:48:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755103723; cv=pass;
        d=google.com; s=arc-20240605;
        b=d/ylRqOLr+11VDJiUCF9QUahcK4o/2+tCTzPcbGIUV7Kku1Fx86Q9ErAy3Shh1Rec2
         GslaqtfhS8ebXkAQahYlbVzbWwG71NXPVq2xc3sJjomFU9Ivx+4zay1mrFSjiLcib44m
         XWf6OuprMdyUXUUvLN79t+1DUmVbGJvoHXx5Z01i0AoCYDSNgqzFvs+fMKshz1YiPbmx
         rJQDv3DodfCsrpLC2jd5GmId5bOd2vSFoBamTHxwLyhkYX8A6JKz6bqc9JGuAu80Xg6L
         p6ec/v+DGvI2sFijl9iWOezoUeaQ0y7ocTXPNYzLJqQrJChZT7by5VE05PJ8vMeH0QyZ
         RtqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=QUWuor8YehbEIVl9/ajY85NJiw4ubZwtZMQV1CTXF4o=;
        fh=MoS1aClBcvmvtCVsvafA3d7Z2hm4xiZGtM5Dvi8Op1Y=;
        b=T75/u4yTLcVCruvTVBzoEH/iuNM8fOrA9LL9PNkzelTU6K8pPpCeYmJemIwt++vF27
         0h4ysh1FVicT4ewoFDT5oM3VAoFZnoL2lZwqEyuxK1OQrNXGS+dUVXfMF/ZgTx5kF4//
         7BkVB1Gs4UH1ojTM/41NiARqVbPYoRNYa0l7AWYqwI0uKtiuh/E+52vTgta3Mbx8A2Ue
         Lv3dwbpUqllD7Uge9Zxp0yiS9quRdorD4XfAClJ2WpbpnD+bmZ6BHsltlnKleBG2QVAz
         vTJWkkUN2kqXeGc/6Pdsgc7Rmzgy91Qyt1Q7dZiXuWw/5k1VYNt9LMY/tnIPezz3Rlg8
         RUJw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=D0LTnPz0;
       spf=pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zenmchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755103723; x=1755708523; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=QUWuor8YehbEIVl9/ajY85NJiw4ubZwtZMQV1CTXF4o=;
        b=bjTVfuYPrGzuQ8ejh6heBjHkCUt2tMeBlTa/xiPurWlqeZKfC/6rVtJEWyPvALQOm8
         t4KdnLUT8o9Mi3F9fTCJE6Bp7bKRDxK9uLaJM2dJIjjiIjmGuUh8+eQ9R/QQIbWiVk3O
         X+6Zdph7mIp1tOGhU6lmx6FNl+DeGK3i2JYXU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755103723; x=1755708523;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QUWuor8YehbEIVl9/ajY85NJiw4ubZwtZMQV1CTXF4o=;
        b=nPv/jrkDEGZMw0U8uvPck4GHLtTXvy+0gDOIWQpQpmEgBC9pEwYsCuZs3/tFMZ5I1c
         S6y+6GUXAsxVA0lDBuK55qE7CiGSrapglzhtVYokb39xX0+7VFmiNnP4bGEXPCMg8bhE
         kaFS/dbHTHpCTO1lWlmj0YvWNNp07S+d3RtujW+tsNqlabSKqXb0uX3tMhIiTud0Yb0d
         L7ExW2ZFo6+HSoJfBJLNc4XaSIEWJBFZ0Yuv5PdVXMYRefQW7FTo4rukwYECPl1dZeG/
         91Z6Vn67o8L/vgsNqAz66hDxzOrabaIiw3l37uIUY36ue8AMmfssxY7++NrOWH1/Tr0n
         BhLg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUt02+8Zl4HmiZm7AUYSx5qrSI6qcVbievQYDyTQnzVR9I+Q1vLayPjl/fmI6U1K1i9NYuteA==@lfdr.de
X-Gm-Message-State: AOJu0YyjgPYnSfREzx0qJVO3kkq55I3WTOY9Oy0T9NRgqo5WmDZssCEw
	eeI0nEwH4jIzwsp2+fYAToJuIigm2Fa0zT+Azeng9VFtS3he432KR+LUGGMypE5iVsw=
X-Google-Smtp-Source: AGHT+IHasBk4TU0GQaWx4i0aOnfVbNA/QcRfgl/cO7oyolH3ySNFkDPOBPpRREJcbzg4ndUeuV/VpA==
X-Received: by 2002:a05:6870:b50a:b0:30c:99c8:522 with SMTP id 586e51a60fabf-30cb5f35792mr856577fac.10.1755103722925;
        Wed, 13 Aug 2025 09:48:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZddiX+M7p0UBZSWoU9ydOHv3CsxTVz6+CMYtsq7IygNsA==
Received: by 2002:a05:6870:242a:b0:30c:c0b:fe9d with SMTP id
 586e51a60fabf-30cce1c793cls102443fac.0.-pod-prod-03-us; Wed, 13 Aug 2025
 09:48:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXkwXyh8RtRvy7UqH4Uogokf8iDaBN9aOWS+QQClXGhOsZQiwWPkFiqSGHDaBtu23ganrhjJ37oXkbdUw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:4f29:b0:40a:ca13:10e9 with SMTP id 5614622812f47-435d4142277mr2152868b6e.14.1755103722331;
        Wed, 13 Aug 2025 09:48:42 -0700 (PDT)
Received: by 2002:a05:6808:654d:b0:40d:498:c1f6 with SMTP id 5614622812f47-4359a0b985amsb6e;
        Wed, 13 Aug 2025 09:24:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXZjQyl92FSsXY2P1uvJGO7REwysw56iexVK2gcH6MuOEZ5Jiidkc2zkCdTjuHuCzZI0qfWyI3mF+lJ5w==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90a:642:b0:31f:762c:bc25 with SMTP id 98e67ed59e1d1-321d0ea6cddmr3330514a91.25.1755102270366;
        Wed, 13 Aug 2025 09:24:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755102270; cv=none;
        d=google.com; s=arc-20240605;
        b=egNXycPjuiEKOLu+jJ8l0JHYbo4MdEP40LodpcY7HZ+Lf41IhWMpHd87kKlYJhrmRv
         ZD1tJTrqQbt1X+RveO+As1tMNgTAIx5OMSY2FJLoQrjzNZiYA4y9JaMGfOhWE7LeCpel
         umF9uUeY4iSMqsJu/89r62CRXeuT5pwGOyFm8Xcbb83mDRq2AEO8GncPnI1/Wq45MfT7
         /W17aMBUuSnlxPW0RvSM/KtJDzLygnClgF70PkvvI5LFdJA7oPOSUpWun3aM2QM8LjV1
         k/bQiHT3gn5Zkn36AGwter1qxiHpJpUf8sfXcPr5glUMhMWNMnyox4smVPqE1h8+9CNR
         1f4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=u1fYfYwdb+xxWcrL06oZBXhXN1znw9DMoL0ryHqiAVc=;
        fh=TozFcUWK6TeEPY9l+ymiTstK2FuNqCFVf/3hY640Ia8=;
        b=QplPOfRveV/4Klp48IA/qvobzhM8FSpIUQDrh+JNTlxgciIYZOuKFuAJBGKC5+4QOC
         UyJ2NDL7oNypejW169HMLIKM1qJ3XWBDxaeWA/EZpGmWkw2Vwao+Za8F5/Q7hpIaFmiS
         1OijJtgVUX96lHzjrT3OuhEnjOzJMKTtgyc+TKe7KDQx8tQkoSmsRh/Wdkz11hSVLYMO
         oHz+Tz7wZNkW+swCy/RTNFu9t2zcd+SCCX+cux9khaNvn4YEp/79lIYt3YiZw7V35EaP
         M+eHip9TWRoq/stY2fNTorVyif6e7+KmSm08+9XniTYc3RNpLKnF+Ldg0IneBFAXI1yL
         adUw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=D0LTnPz0;
       spf=pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zenmchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 98e67ed59e1d1-3209a840b35sor27752226a91.5.2025.08.13.09.24.30
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 13 Aug 2025 09:24:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCV9slK5vrvA09nrCvslgegHpz4WC0k4O7vW80t29ylJ8Yp/iyrxhKIiZUaASmINY1kCdXwggyvzPPpAKQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncuTdTLAYjH8eosNaZS47pMIaHZoBV4bK9gemhsMRqYX6qeuE4a8wMw8nJV5bfw
	QU5waTqTsgBIAM+5Svo/UuLOU6iXza1zuK3uIGtaowIctRCnC8zs4J3DfMRrLRNShfytnmkYsbS
	KBQgVV5R41ckpYst863aOkujXNn6EQ4kcLVOPOLuLnLweToB3R4Gxjx1qRKncZ87XN3CK3Pmaeg
	kyG/AnwjzQBMbSD6ldrg3pP1xy6mmjsEAe44n0miPBmwejjAOBuf7zn7fom+Q7ZdmWLWA4+qQUx
	GJsW14g96r3EMOcLoxtxlOho0WRZzUsXhSri/ze3pofEPi01XmaoKfpzRt6OmRC7aZHyNtgNMkb
	7bTI68Q1dELUl/GqpSWO2wDksNjYjAkjrVBWP7rGQ8i4gNlLK8O13
X-Received: by 2002:a17:90b:50cc:b0:31f:6ddd:ef3 with SMTP id 98e67ed59e1d1-321d0f253d2mr5202354a91.35.1755102269702;
        Wed, 13 Aug 2025 09:24:29 -0700 (PDT)
Received: from BM5220 (118-232-8-190.dynamic.kbronet.com.tw. [118.232.8.190])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3232579dfbesm558412a91.20.2025.08.13.09.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 09:24:29 -0700 (PDT)
From: Zenm Chen <zenmchen@gmail.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Cc: pkshih@realtek.com,
	rtl8821cerfe2@gmail.com,
	usbwifi2024@gmail.com,
	zenmchen@gmail.com,
	stable@vger.kernel.org
Subject: [usb-storage] [PATCH] USB: storage: Ignore driver CD mode for Realtek
 multi-mode Wi-Fi dongles
Date: Thu, 14 Aug 2025 00:24:15 +0800
Message-ID: <20250813162415.2630-1-zenmchen@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Original-Sender: ZenmChen@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=D0LTnPz0;       spf=pass
 (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=zenmchen@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

Many Realtek USB Wi-Fi dongles released in recent years have two modes: 
one is driver CD mode which has Windows driver onboard, another one is
Wi-Fi mode. Add the US_FL_IGNORE_DEVICE quirk for these multi-mode devices.
Otherwise, usb_modeswitch may fail to switch them to Wi-Fi mode.

Currently there are only two USB IDs known to be used by these multi-mode
Wi-Fi dongles: 0bda:1a2b and 0bda:a192.

Information about Mercury MW310UH in /sys/kernel/debug/usb/devices.
T:  Bus=02 Lev=01 Prnt=01 Port=01 Cnt=01 Dev#= 12 Spd=480  MxCh= 0
D:  Ver= 2.00 Cls=00(>ifc ) Sub=00 Prot=00 MxPS=64 #Cfgs=  1
P:  Vendor=0bda ProdID=a192 Rev= 2.00
S:  Manufacturer=Realtek
S:  Product=DISK
C:* #Ifs= 1 Cfg#= 1 Atr=80 MxPwr=500mA
I:* If#= 0 Alt= 0 #EPs= 2 Cls=08(stor.) Sub=06 Prot=50 Driver=(none)
E:  Ad=8a(I) Atr=02(Bulk) MxPS= 512 Ivl=0ms
E:  Ad=0b(O) Atr=02(Bulk) MxPS= 512 Ivl=0ms

Information about D-Link AX9U rev. A1 in /sys/kernel/debug/usb/devices.
T:  Bus=03 Lev=01 Prnt=01 Port=02 Cnt=01 Dev#= 55 Spd=480  MxCh= 0
D:  Ver= 2.00 Cls=00(>ifc ) Sub=00 Prot=00 MxPS=64 #Cfgs=  1
P:  Vendor=0bda ProdID=1a2b Rev= 0.00
S:  Manufacturer=Realtek
S:  Product=DISK
C:* #Ifs= 1 Cfg#= 1 Atr=e0 MxPwr=500mA
I:* If#= 0 Alt= 0 #EPs= 2 Cls=08(stor.) Sub=06 Prot=50 Driver=(none)
E:  Ad=84(I) Atr=02(Bulk) MxPS= 512 Ivl=0ms
E:  Ad=05(O) Atr=02(Bulk) MxPS= 512 Ivl=0ms

Cc: stable@vger.kernel.org # 5.4.x
Signed-off-by: Zenm Chen <zenmchen@gmail.com>
---
 drivers/usb/storage/unusual_devs.h | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index 54f0b1c83..5a6577a57 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -1494,6 +1494,28 @@ UNUSUAL_DEV( 0x0bc2, 0x3332, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_WP_DETECT ),
 
+/*
+ * Reported by Zenm Chen <zenmchen@gmail.com>
+ * Ignore driver CD mode, otherwise usb_modeswitch may fail to switch
+ * the device into Wi-Fi mode.
+ */
+UNUSUAL_DEV( 0x0bda, 0x1a2b, 0x0000, 0xffff,
+		"Realtek",
+		"DISK",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_DEVICE ),
+
+/*
+ * Reported by Zenm Chen <zenmchen@gmail.com>
+ * Ignore driver CD mode, otherwise usb_modeswitch may fail to switch
+ * the device into Wi-Fi mode.
+ */
+UNUSUAL_DEV( 0x0bda, 0xa192, 0x0000, 0xffff,
+		"Realtek",
+		"DISK",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_DEVICE ),
+
 UNUSUAL_DEV(  0x0d49, 0x7310, 0x0000, 0x9999,
 		"Maxtor",
 		"USB to SATA",
-- 
2.50.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250813162415.2630-1-zenmchen%40gmail.com.
