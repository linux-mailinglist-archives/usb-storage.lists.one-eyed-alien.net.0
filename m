Return-Path: <usb-storage+bncBCIKNOFMWQGRBIEVXGJAMGQEUYTH4UA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4104F7203
	for <lists+usb-storage@lfdr.de>; Thu,  7 Apr 2022 04:21:21 +0200 (CEST)
Received: by mail-pj1-x1045.google.com with SMTP id ob7-20020a17090b390700b001c692ec6de4sf4899735pjb.7
        for <lists+usb-storage@lfdr.de>; Wed, 06 Apr 2022 19:21:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649298080; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tm2oejWCywKMDBF12aL9UIj5Ymt8EtGwxiyuMxRjuEU0HmcHoT/7I088bcuA0caFNj
         xiD29Os4hu6hkZSkpWbxBwDJIdCn8I2p1ZWKesLewTdlIu4XANLWBF60BKnzOIFFBtfZ
         3c1+8WWFA92xez0VKMQ740fFXcwKvs+FKjCyg9NGOqdgIE2r1Bbw50AnTGzGr62ZEwi9
         hypKjwPU56LNyG3AE/X3u6N7+icK2sfLZ9V+H6uJi9x2z9L1HBkn2ugZdsqr0edlg+y6
         BJ5inQMQ6jVedpj3HzW0ZIeyHO156t7GvVAcPpcVNjrjtAo0UAZ+5hXErE/om4TbXQLa
         JOxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ZZIgVLqM2m7iCVBUOdMRs1Y1SMjWtJ3HQrBL4n+UxVU=;
        b=KSocTTcgNCF+9/AlYMPKIxd5jRdgMRNV+kUXzk+N2aZgZq9aD9eJTJiNJLHlY5/bi+
         QPtukoGiGODDB2qNzkB7EYqFF/0OVhOLqHYO9eEv6vgDk4kJ6piScIxOGjpFD49LoNQ3
         OUudT1rL9GCRjAthGt4ajkfCKMx8fgq6yo69LxZ7JzRcX5rV0paSQ5bgl8semi8jxql8
         RLJVzj3pirSa/s5TgpppKp38L1YDEax5J8wEVjXDYxm6My16BX4ioCtPZQ7MPWUDUwJN
         tuhhlZ/851xbszkSDKkCtZjhiXPGPKMZznyXSPBs9FXPSr86Pw/qj8RucwIex5tHfX8s
         nnUw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZZIgVLqM2m7iCVBUOdMRs1Y1SMjWtJ3HQrBL4n+UxVU=;
        b=YVkepLgFlSjHaUhqh1i9Vlx7XHz+pRtznLbmYDYVOHvRNLochrUttM83XVjZI7NmzL
         MhbTYpd1qMbUw2YUfc4ewRgqO/D+ZimPrFgVjJIOB/UveR/yVgoN6tUVUB+z5eZzkz5A
         oitY+AhFIrDznp5VwXNrBBUOrvv69xuxXAtvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZZIgVLqM2m7iCVBUOdMRs1Y1SMjWtJ3HQrBL4n+UxVU=;
        b=sHhk7nJLv5HR6kOPa3QQSmQ46qKklJ4cSSphYkSL9kScx5yhd0zhwlQ/7kWcG1Gy4p
         tAAwZus2ma0PwaZtpBVLkSTWWqzPz8B3AK/l1ZNtUdHmH/rOC9zxIqSc/tWecC1QtRFM
         C3WJ2JVomUddRLVKpud6YHyuoP1oxZwHVE+IKnKvg/hyBsgBvIW/LX0hAj12hJFNyAuH
         aThiBvqQ34hMscqEdMkhzvFaV+aOr4yvgM1mRgXyOP2aHJKMRA7K2m41Mi9WgzvB3f7T
         kMQiYtZNiYrk2HmmvdZvHnFyqqw7rTudhndgEWhI6V93ETjWZd1jGqnUzji5g3SzBfNr
         j+Hw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531aistcsrL9kAzjBHy0pT/39VBZmUzIqcuOLF7L8jAfUZGSueR7
	ujjqoolQSzqgWsrU9GJnGe5ktw==
X-Google-Smtp-Source: ABdhPJwQXBmlNh/1ilpR6ijNj2NLDOI8hhq14hTl4q7o3Ppup0KH2Df6AYW5eJ4gabjyDng0TAUTPw==
X-Received: by 2002:a17:90a:4417:b0:1ca:a861:3fbf with SMTP id s23-20020a17090a441700b001caa8613fbfmr13565713pjg.80.1649298080183;
        Wed, 06 Apr 2022 19:21:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:1803:b0:1c7:2b53:89ea with SMTP id
 lw3-20020a17090b180300b001c72b5389eals7101541pjb.2.canary-gmail; Wed, 06 Apr
 2022 19:21:19 -0700 (PDT)
X-Received: by 2002:a17:90b:4d08:b0:1c7:7567:9f6b with SMTP id mw8-20020a17090b4d0800b001c775679f6bmr13542224pjb.134.1649298079551;
        Wed, 06 Apr 2022 19:21:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649298079; cv=none;
        d=google.com; s=arc-20160816;
        b=WJ035H9MhxyEwSrX+O4biQ4l4STHftcUrme4VAysRsV54I84hRXdQkSeeIvm4d2ocj
         OFN4/TDKQO9DucUBP3p7e1fP1peK2yw02qsFZMqa2eBB7R1k2K9BhJtTazGbKVkLS+XC
         4ndbfP2MUdam6U4dUn+DO3ry90Vl4hh8QHNDMvHA3yrBm8zRRsnpotRwxNtqSRraMOW5
         b7PxLbkdxvvNRSayZFSHlC/QMqqEg14i7Zt7exJQ/pLtFNbnPEh+3OIZGzkTdBsz65bp
         CDKFD+fhXRbkFFWgudwIZxi5AYEe1CjdpiSDY7PNL1dAPV+ty5i0SCKeAnTHD1cvwQYR
         xUeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=M9ckFzmsUKwRMCGx5n6uz/esTMxz4mLylRQdZvTwi0Q=;
        b=MNdJWc7EGpm1kKpzQ8wi4bf4uXjzu0aSe7xQph05kACrQEUsVSgWZTIy529Tw06C55
         zATnMKjvx/RxCjFx4Z+Sd31rds+wt8Q1XL7DMhz2B5taSDAmzzbwjltp8iooDuMzY2/A
         QE3tRK7nVbAQAwmjE8VKHIZfPxrTK+JzunAu3wi+pPGh7xod65oikKsNd7h9KKDKt0tp
         RVnWmQ7TYad6jrPtDgSULUZX5R5TRpJs6Y2qUv/gQWG03rZCjc1Zf2pzc1ICI1BntAju
         USVzGdiNU+EJcvJg16AD8b+Ked0jTocO6OkFkOkShPH07X47J7zNa0RB42OCyYO0GD8v
         pSyA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zju.edu.cn (mail.zju.edu.cn. [61.164.42.155])
        by mx.google.com with ESMTP id gk14-20020a17090b118e00b001c67711ab8asi445393pjb.153.2022.04.06.19.21.18
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 06 Apr 2022 19:21:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) client-ip=61.164.42.155;
Received: from localhost.localdomain (unknown [222.205.11.114])
	by mail-app2 (Coremail) with SMTP id by_KCgC3LxeaSk5i9aRCAQ--.13077S4;
	Thu, 07 Apr 2022 10:21:14 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	mdharm-usb@one-eyed-alien.net
Cc: Lin Ma <linma@zju.edu.cn>
Subject: [usb-storage] [PATCH v0 2/3] usb-storage: isd200: fix initFunction
 error return
Date: Thu,  7 Apr 2022 10:21:10 +0800
Message-Id: <20220407022110.3757-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CM-TRANSID: by_KCgC3LxeaSk5i9aRCAQ--.13077S4
X-Coremail-Antispam: 1UD129KBjvJXoW7tw1kZFyfJr4xtr1kZw18Krg_yoW8Ww1Upa
	n7G3yjkF4UJr1UGr1DJrZYvF1Syas7Gry7Kry7t34Fqr1rJ3yjvFW5CryF9rWUtryfKr1f
	tF4Dtry3uF1xJw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUv01xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
	w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
	IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW0oVCq3wA2z4x0Y4vEx4A2
	jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52
	x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUGVWU
	XwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI4
	8JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCY02Avz4vE14v_Gr1l42xK82IYc2Ij64vIr41l
	42xK82IY6x8ErcxFaVAv8VW8uw4UJr1UMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I
	8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWU
	twCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x
	0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_
	Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VU1
	sYFtUUUUU==
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
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

The initFunction is called when probing a new device, its call relation
is like:

USB core: probe() -> usb_stor_probe2() -> usb_stor_acquire_resources()
-> isd200_init_info()

That is, the error return of the initFunction should tell USB core what
happened instead of using custom error code like ISD200_ERROR.

Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
 drivers/usb/storage/isd200.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
index 05429f1f69f9..4e0eef1440b7 100644
--- a/drivers/usb/storage/isd200.c
+++ b/drivers/usb/storage/isd200.c
@@ -1449,7 +1449,7 @@ static void isd200_free_info_ptrs(void *info_)
  * Allocates (if necessary) and initializes the driver structure.
  *
  * RETURNS:
- *    ISD status code
+ *    error status code
  */
 static int isd200_init_info(struct us_data *us)
 {
@@ -1457,7 +1457,7 @@ static int isd200_init_info(struct us_data *us)
 
 	info = kzalloc(sizeof(struct isd200_info), GFP_KERNEL);
 	if (!info)
-		return ISD200_ERROR;
+		return -ENOMEM;
 
 	info->id = kzalloc(ATA_ID_WORDS * 2, GFP_KERNEL);
 	info->RegsBuf = kmalloc(sizeof(info->ATARegs), GFP_KERNEL);
@@ -1466,13 +1466,13 @@ static int isd200_init_info(struct us_data *us)
 	if (!info->id || !info->RegsBuf || !info->srb.sense_buffer) {
 		isd200_free_info_ptrs(info);
 		kfree(info);
-		return ISD200_ERROR;
+		return -ENOMEM;
 	}
 
 	us->extra = info;
 	us->extra_destructor = isd200_free_info_ptrs;
 
-	return ISD200_GOOD;
+	return 0;
 }
 
 /**************************************************************************
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220407022110.3757-1-linma%40zju.edu.cn.
