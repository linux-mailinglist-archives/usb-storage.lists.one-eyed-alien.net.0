Return-Path: <usb-storage+bncBC5J7HGFV4DBBOHNXOZAMGQEUXS2CHY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 422538CCD78
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 09:56:42 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5b27c7a007csf1224433eaf.0
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 00:56:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716451001; cv=pass;
        d=google.com; s=arc-20160816;
        b=epMzvgvLHK5PPHeIO+X9eFVdqpLEjBjMUU9GtpKfl8g12GSsEl8ExUosTDyWedHcyQ
         1qSXM1De2CONibrOOnMTxBNMP6S+b320d+VHHCKfOSNtOigc36Afc1eDEBhpJdzehV4v
         lk9B7hCzQiRbR5ajkD6mGP8LtrFeq5P2JnfZlKcZ+zqzlLTHTthbj5SJ9S0o3YAgfJ7q
         XSV3/qq4tOmAY9OcggOxyWKlIOyI7Zw33q3S13v8XaXtr48R24Ef5StHF8jedEGlqj+n
         99kW6Ngcfv+a9vM09lvAr9cRITh/qe7zrpiWXWElowtfBzXUSngx/G6KGpvOT7sxdVS5
         RWXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=J3eZzvKrjDdlJP5OtWSkT3tXe3eCSnrig8i5/oKe/vo=;
        fh=n7nGFigtDzy8lSCzJRnbC7pkIiJ91kzSDHgv3HFBN80=;
        b=sWG2psn2Ce9gsqrP5IAYwyzwEdnyuFkW777qfBC3rtpQ5TUc2kmk9aizJOQKFIPdQt
         cgRgxzpJ+y310lX9nMjMDbVswxSlrbsTS1VB71OFPja5n3W82GAjBenRvXC1853sXLPN
         fHFXGjBMgR9MWzSZO5d1XPnOA6L90GsCVXXWSKnxhtfXB8YGA5d1deI+U2humraqMM6n
         YzPuyh15Etlk0T+TuqHH/+j3f7eXbKbAixB98mQpeQpa9v+0FRDdKgi8+w7WnPvuvFmP
         BJrxxhJetUYkWOEFddlGXd/OHAaynxvzi2BCbF9dqx3PgYkV01X+G5lOFBIsEP6ahog3
         ZD9A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=HLTyyi8q;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716451001; x=1717055801; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=J3eZzvKrjDdlJP5OtWSkT3tXe3eCSnrig8i5/oKe/vo=;
        b=V7s/kHcdYvxhzmvykp4eLL6cl/em+eUnh5HoT1JXKKFtf9N167E7lXkk28zg4b8qUT
         nJ/H/wM3coMCacjXIqZPUX8u5FS2z3xPFk3W6VvpksCrUcb9K66Fr4CerEhLLkfLQIfR
         GHp1NsoqlckJh1hu5p8X+RLd4jHZ0Y8hi4Jbs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716451001; x=1717055801;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J3eZzvKrjDdlJP5OtWSkT3tXe3eCSnrig8i5/oKe/vo=;
        b=cSBGr9peiqvpWhmJIKVGWbGhS5zfZg7+Vl8+Y4YGWbOuWHZIHhV/EsxHvJT8PMeLoO
         6v7AtVwTVLAVAtmZQlb99sJEr9Jj/KfST2UtChwD900tBTtkH1AF3fa7k11Va/Z449in
         DTnVM9vO8RP+GFWbbG9EJu16UhsnTDMXeQ/qE+E8njiiYRapmFOen8Mm9PbNAFW11xUx
         maiX+FyZ+u9g2qorUPS7Kp0FBuBB9Tv8FpIC12rlw1Bg5estshrVmlU69x/YFqvgNP/U
         VpgMitTtcDG05p4TpB0/c+Mp5lnfdncgf0l0G+UvXdLDo1i9i6njs6I3g0SLt8v5oJz5
         95Hg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUbDraPgfPETkZoZMyB05H8SIzam+x6uxr5oyNvypLezDkK+DrexeHdHFnH01UrkWAHPLJO3vV5WqUbNcovZGTcmkfKJ8zozcuv
X-Gm-Message-State: AOJu0YwKRPmhd+pJrRgS46X/Wi54NRGyf4AYBArLPLrddkuGaEfkvGsN
	ab1lv579laLjnYeoO7wAYMAuqzCOFaHY2uT9Qzh0xT5MvMupMyF4z98xzF8QXR8=
X-Google-Smtp-Source: AGHT+IGc1iZh6VO7s0dv3w2AlL0tWaNdQvxVnIVb1Ge76S1N+75mlceMHj8ZwkJlDKQfyft/BVqT9g==
X-Received: by 2002:a05:6820:1a9f:b0:5b7:1f5d:6484 with SMTP id 006d021491bc7-5b71f5d657bmr2896272eaf.3.1716451000897;
        Thu, 23 May 2024 00:56:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:5589:0:b0:5b2:74d6:9f19 with SMTP id 006d021491bc7-5b274d6a015ls1376281eaf.2.-pod-prod-05-us;
 Thu, 23 May 2024 00:56:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUSgDLnk18j+xX2GpJPgiaFSGZvApWN9ucM4B/2wS+SYn0aldDpMKjI47ga88GLVrS1rz94WHSI4LVTAPFIzIgAfMSoJpBnG99eN3hbo6Juu0AvZr4=
X-Received: by 2002:a05:6820:1c85:b0:5b3:5d6:7a4f with SMTP id 006d021491bc7-5b69dbebdd1mr218428eaf.0.1716451000421;
        Thu, 23 May 2024 00:56:40 -0700 (PDT)
Received: by 2002:a05:6808:192a:b0:3c9:943d:23a2 with SMTP id 5614622812f47-3cd2eee535cmsb6e;
        Thu, 23 May 2024 00:23:23 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU+5HKGD5kL5CiKE3DImx8l2Z7MI+q58P/Kz0AmekpoIxKmthA08qis3oKSM9tX1kkMe1ataebFJ+aH6xGKlAwf+T164y/6t9MDvmOY7mnyKRkhYNc=
X-Received: by 2002:a05:6870:819d:b0:24c:4ab2:7f96 with SMTP id 586e51a60fabf-24c68bac5d1mr4917922fac.8.1716449002918;
        Thu, 23 May 2024 00:23:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716449002; cv=none;
        d=google.com; s=arc-20160816;
        b=ie9hpi3AWLNDF3gwwHjSptpghWyMUA+rt3xPG352xVNYKnvCw96mgiNBxLqHhfbq6O
         bafzHZ56WQn5DG/bJYFaCSut0fRWqCB7IebCVZTn08ha1k2AlY0qrQP7ZIWwAztxMf1V
         hIadTXdY6Pgy+XpC4L7DYe5MfFaxqKvAUWuiyrtkJs6VBa5zhFh6DD2Be+x5rQ5dSJYW
         kZZdesCFw+F/CTSMbZU6ynN/9e5GJKf9nx6jN0g5KMa8oFdKCse2NjkgUBYBfIkpd9C8
         vKfLS80Xm31LPpUR7uwmARTkgZXMBoCUewglDT/TxBoQU3tPuiUQd/tZN7pym9tl6UqQ
         fhog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=rq5A7qawIz0cEKS1QsmbeowUJYNK+rwYbjhoZojg+Kk=;
        fh=wgiGnZj6aiyVMulXswQgDhOv+4xS12epWIbh5ZhTuTY=;
        b=KOPHS7hKOQuhZykj6JpiY2JJuzUhTVYxVWh0aBmGI5Vv0O6eq8yj9DOTJHmTgqpN8E
         /P13RXJxF6cME6094G7+L0pbx05LXh0o0bYMNdUUMwwZImSv2zbVIkgTqcDp9Ee0OY1T
         Nd90wtsOynv5O+6D6kbW/8Y2cUNs5n92qFAh/k0xgaD/vfLPRTqSTjL+yohhel675uza
         A5NKNbeC0WaM72G45s2ar9TijA5XBgBNUqcZKgxJWYln6PTxP2krQg6LG5cQPBOZtaKA
         4kFMAMVe+oSPFALLwvTTcXmKHba63oT62eCuYfa4Av1yoms+GdIkgzovhubKa8J2yBLJ
         7k3Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=HLTyyi8q;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d2e1a72fcca58-6f4d2aafe16sor16349909b3a.6.2024.05.23.00.23.22
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 23 May 2024 00:23:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVHZzUqFT20rId19tiBi2Pg9e0QiQA1ygAlUqfKiRvDJhgWO6Ecpudcc12gzCTX7EOasswzDvXrfY31rry0VdihK2zdu6m06H0R83HojJEtOVSlo+U=
X-Received: by 2002:a05:6a00:acd:b0:6f3:88c5:fed6 with SMTP id d2e1a72fcca58-6f6d60ca8b7mr4509744b3a.19.1716449002429;
        Thu, 23 May 2024 00:23:22 -0700 (PDT)
Received: from velvet.. ([111.42.148.111])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2b2fe07sm23453154b3a.216.2024.05.23.00.23.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 00:23:22 -0700 (PDT)
From: Shichao Lai <shichaorai@gmail.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Shichao Lai <shichaorai@gmail.com>,
	xingwei lee <xrivendell7@gmail.com>,
	yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] [PATCH] Check whether divisor is non-zero before division
Date: Thu, 23 May 2024 15:22:42 +0800
Message-Id: <20240523072242.787164-1-shichaorai@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=HLTyyi8q;       spf=pass
 (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=shichaorai@gmail.com;       dmarc=pass
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

Since uzonesize may be zero, so a judgement for non-zero is nessesary.

Reported-by: xingwei lee <xrivendell7@gmail.com>
Reported-by: yue sun <samsun1006219@gmail.com>
Signed-off-by: Shichao Lai <shichaorai@gmail.com>
---
 drivers/usb/storage/alauda.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 115f05a6201a..db075a8c03cb 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -947,6 +947,8 @@ static int alauda_read_data(struct us_data *us, unsigned long address,
 	sg = NULL;
 
 	while (sectors > 0) {
+		if (!uzonesize)
+			return USB_STOR_TRANSPORT_ERROR;
 		unsigned int zone = lba / uzonesize; /* integer division */
 		unsigned int lba_offset = lba - (zone * uzonesize);
 		unsigned int pages;
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240523072242.787164-1-shichaorai%40gmail.com.
