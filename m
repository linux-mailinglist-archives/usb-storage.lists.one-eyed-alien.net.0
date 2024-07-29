Return-Path: <usb-storage+bncBCFZHPHU3ENBB2N4T62QMGQEW6SCXVI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BCA93FD48
	for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2024 20:24:43 +0200 (CEST)
Received: by mail-ot1-x346.google.com with SMTP id 46e09a7af769-709313dd2d1sf2117907a34.0
        for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2024 11:24:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722277482; cv=pass;
        d=google.com; s=arc-20160816;
        b=xNLjCIJLEMzI3HaS+3pIUmKo2pdvyzpmjPtOHz8fsgsw2/1/78BU7sMcoLXTr38SUf
         /fZM3XaUYh1XC7jTYp+SFE+PZXpdeojKmBVtdLXu0Ty5R85Mg1XCc9Iq7si07uQJTGa4
         WsoVFAgzWKGHDw+49cFlapUlCLeRjyul9LUS33nEe/wx2Hs1gf368aLKf5u3SpA+YjB1
         Ols9T91Pzpuzq5q6s01eXBltGoapbnVXDP9U6g2LuGKaXi8nPGCCfRrBVumKUdb3vNlc
         f6ZL6kzGuVlSZdaXpBAn1usu0Mk/O5Rl9P4TROCoD2ma+qPDhyuJ4DWxkdDQRN7mYKS7
         f9jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=3z/WOz2b0X8bjvOYO7kVlXsT95Bl48Flq+XB2izpdfY=;
        fh=LMMB30vABip/eaDvmi2qGxtH73hpf9HknxXS13IPIYU=;
        b=Gc1N/VTxe/LbhxpgAukZ7415lPyr4rjmMZLOd2PS/S8K8Yzg9xQu2ZmEj6EK46t8TG
         V2RdEtYbkStn4rV4Q0ytAGy0A22OskGxhhgavQ9evct5gxikoybs7vop2hL19lBuZfbv
         YHlpbVa2PhegsH1G7WHmjdP3a23996XnjHENIzqTZrFOuAma+Z+ZnDOVKbaNgPVZUReQ
         UN6Z9F1CpywcwOjh0qyb7nOgBoYKcy0QhMfz0fgeXH/uYPqj8lF6GONbo8CGWzDmybCc
         EtnMvpFerJsnkuYrsnNRj+TPSGyNbE8RXGKEfQFLndJpGCF+U09Vwwyxpz96PPtHMVGd
         ySag==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=H3dqNkut;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722277482; x=1722882282; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=3z/WOz2b0X8bjvOYO7kVlXsT95Bl48Flq+XB2izpdfY=;
        b=S+Bog7Shi+ATUU2VfimSefPhBeIXa6HHbh0beCjUoYjXNCEdooTrLjK+B4DUM+LSg2
         sIJ72guAcKyKrfrJjJQ1gaxSPhB10s05XRgF/vhMBjbpng96pkv5JiojS/YvDy+QjSXw
         XQqu1//iC2fULmhtFazmtz+v1xaLKVKP3AVmw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722277482; x=1722882282;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3z/WOz2b0X8bjvOYO7kVlXsT95Bl48Flq+XB2izpdfY=;
        b=n3Dq4AuXkmXblvPRXIo74s2KwODfSnrCVgkz6HOl3UQ67zlJwY3E2U7TP/IEd9cPba
         QM5FUhi278wGDRjgpAuIFhxmLQpfWjsHHPaaE3cHvvIMQFB4u1dEq6Rm7SKUslg9/nNZ
         5lAM4rSq9r66gGb7UpG3HU2YqCpUtQkTIckMPQB0DTn9f2vDKto67hDqCV72DPQmojxG
         qiss1iTgyI8vWAirnAZJXdFr9VSbdefdIMIPl+rho/3O2kHSrEYgu1eZoGwMWrV+O5UQ
         VzSMRRyFJlJHdQf0spzoilg8kdCEQuFQb0qPnmPYf7I6//2GkUL1MV4B0xZuutmMdJ/U
         WDAw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWqG8saWkkyPrd8P+fjCfJoxcy1Bqvo1CR+cn3IgX4gIzRuus+AfBw+EHHKTz0qd0DzJZC3438Kq2/LLYTUIoQ2BHYmitfnnXEa
X-Gm-Message-State: AOJu0YxV/BmwG33LB0emmk0b5GIVfqNwzr1vQhLIWvofQ7EEjJP+t5Sf
	faWbTIXDF61kNkt0A75wozwHW2FOvQtgCyRLSG/G5ucq9QMVCunWGdjR1/FnbSo=
X-Google-Smtp-Source: AGHT+IGiuwtT5D/5Z1CVxjUPSuGnTAnkPwHrNb3I9J0o/2jP/z4Yt//P/fKysQ06PtF418M2RPEPgw==
X-Received: by 2002:a9d:67cc:0:b0:703:6f95:98e9 with SMTP id 46e09a7af769-70940c1d0aemr4440116a34.10.1722277481880;
        Mon, 29 Jul 2024 11:24:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:3059:0:b0:5c2:1c26:de10 with SMTP id 006d021491bc7-5d5ae8db2b9ls4214484eaf.1.-pod-prod-04-us;
 Mon, 29 Jul 2024 11:24:41 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUxUF4o8TO/hB/kd5HKCYKIRE6fF6+JcN1+Mhc+Oip9LX6G/ibTDi6kN7N4Mug/DzqJOYPfzKTUqnNt8cLexaWIsQELk7gCrnxngYOwuVTc6+cFw84=
X-Received: by 2002:a05:6820:50c:b0:5c7:b7c5:7df with SMTP id 006d021491bc7-5d5d0eaa0f5mr181012eaf.1.1722277481429;
        Mon, 29 Jul 2024 11:24:41 -0700 (PDT)
Received: by 2002:a05:6808:d2:b0:3d9:3291:87dc with SMTP id 5614622812f47-3db1accbc20msb6e;
        Mon, 29 Jul 2024 11:23:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU0pVVRKH8brcagpDXQVwnqH7O3IH02i7zNaOuo9zeDpMtcZbBgHiX9dtFGn5aRCN/MIG8q9nEmOxoI+9E3dwShYVrZdCzWNiSf4evLXZOnOH2+SiU=
X-Received: by 2002:a05:6a00:859a:b0:70d:34a1:5ccc with SMTP id d2e1a72fcca58-70ece822cd7mr13961254b3a.13.1722277436095;
        Mon, 29 Jul 2024 11:23:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722277436; cv=none;
        d=google.com; s=arc-20160816;
        b=0YjFrMW17NCtIYntzEJIUjx6DgrieWjNee1y23ILY1b//R51WAeiMgwbCp1/QPt64z
         9u6Oq00Pk2kSBt92eHX3DDCrXGY9qeDPMYn1qNfE8YNR/8fjvdTUtIpz2aop4BVceMLu
         l6z9qBoVhtkYYWfquJwPisiGTC4JO8bdM7hcnCmOkKG7mFee6U4WFCwANVmUX+sGVdAT
         51wvAj5Kberruq3id8T2hdrsZD6YlcjCk3nLrrogcOk2AOIXpBMUz9qcgJnNC6TsutND
         RYnK4jW8QPwcRPcQcRB4uQaJiGI5+WZYk7HPrUCPFlPusVVQcpX0GlryY+FZSyZtaY0O
         UKuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=yemLqtqvWl8R5S6sIbsu7pMycbwVn/6prDN8HksHxqM=;
        fh=mQlnuSjIqM/myAbpTgK2OaI/NaT0Gmr6FqYVbFgQiU8=;
        b=dHoENxlR88LcLYkAxahg22OuAiN6Yrgmx9Izh5YLoAY67q4FuswI+RC1d5ccXmzGB1
         ojOT501p6gYYz7EN6tkGTPW2O+VMHWkYhNhsw9mTjze5qflUMdsIdaXWIwZv9DifH51s
         /vVP2zZv18RK5ovYHwjL1TPxL5a5OT1fYFT6HxAnaHXaTyOM7as9n4WVAIIJP997G2HV
         yNDLqSqrGCWoW5AWdc61+uGgNKHqOjIZ8uMloE8vs9rMFTNHosB3Wjh0+Kk8ktN/PaVp
         Sgd0ht6tk6g8qeYxxG/qjjFRyBsGYw2s1gm+4Sh3OWLBsfnTbZ9FMHmZiXR/umGsv2xC
         gFrQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=H3dqNkut;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 41be03b00d2f7-7a895b7dde3sor8368878a12.5.2024.07.29.11.23.56
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 29 Jul 2024 11:23:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCU2O8M1RkjAn71m1ikgA18jyaMVImRQrpaUp2CoGrX7sDjI/C3wKKXH26g3NkCE8I5PUMMCii4oCkPpbxEM/XBgUSQxWuZWCHGeiICbkKsozQUyD9c=
X-Received: by 2002:a17:90b:1a86:b0:2c8:2236:e2c3 with SMTP id 98e67ed59e1d1-2cf7cf7fdb3mr14524692a91.17.1722277435364;
        Mon, 29 Jul 2024 11:23:55 -0700 (PDT)
Received: from embed-PC.. ([106.205.109.112])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cdb738fe04sm10925787a91.12.2024.07.29.11.23.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 11:23:55 -0700 (PDT)
From: Abhishek Tamboli <abhishektamboli9@gmail.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-usb@vger.kernel.org,
	skhan@linuxfoundation.org,
	dan.carpenter@linaro.org,
	rbmarliere@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
Date: Mon, 29 Jul 2024 23:53:48 +0530
Message-Id: <20240729182348.451436-1-abhishektamboli9@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Original-Sender: abhishektamboli9@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=H3dqNkut;       spf=pass
 (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

Change bl_len from u16 to u32 to accommodate the necessary bit shifts.

Fix the following smatch warnings:

drivers/usb/storage/ene_ub6250.c:1509 ms_scsi_read_capacity() warn: right shifting more than type allows 16 vs 24
drivers/usb/storage/ene_ub6250.c:1510 ms_scsi_read_capacity() warn: right shifting more than type allows 16 vs 16

Signed-off-by: Abhishek Tamboli <abhishektamboli9@gmail.com>
---
 drivers/usb/storage/ene_ub6250.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6250.c
index 97c66c0d91f4..ab6718dc874f 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -1484,7 +1484,7 @@ static int ms_scsi_mode_sense(struct us_data *us, struct scsi_cmnd *srb)
 static int ms_scsi_read_capacity(struct us_data *us, struct scsi_cmnd *srb)
 {
 	u32   bl_num;
-	u16    bl_len;
+	u32    bl_len;
 	unsigned int offset = 0;
 	unsigned char    buf[8];
 	struct scatterlist *sg = NULL;
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240729182348.451436-1-abhishektamboli9%40gmail.com.
