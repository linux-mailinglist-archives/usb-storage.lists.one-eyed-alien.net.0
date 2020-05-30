Return-Path: <usb-storage+bncBAABBIFEZL3AKGQE5NUV4BI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F92D1E92BF
	for <lists+usb-storage@lfdr.de>; Sat, 30 May 2020 19:04:34 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id u4sf1849793ood.6
        for <lists+usb-storage@lfdr.de>; Sat, 30 May 2020 10:04:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590858273; cv=pass;
        d=google.com; s=arc-20160816;
        b=SoXucjhzWqme+AkkEPfOz3HVjeYmvwUTayXH+TEzX2RpBaddSqgqoT3AChFxCtMjUs
         awJQjpK/393caTxum5bHtauz8qCs7l38FFbEWBz4fCAru6MQ4uMm9dUi8cYsJ5B2I57X
         P7SGzJImc/uh3vOj0X/vqCbAYWffR178HNzUb7+LNv1Xxau1thjXtNypnxnkbkiQpkCK
         b50Z/YlUi66jdgnyPFCfzmFfWbloSl75WDvQSl+wvvTdwIIlBS0NI8rhJyPZFI+25aqd
         bIFT7hnRtJ7HMYRUa4uuLyBBj+60mf6jYPIr2H/EC7WYoQFBpjRL28iQV37OSZTnxAeu
         6itQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=wAzFfXOUjMWgFKH3LuodGr9dJi71QMgByTIB+HnY7+I=;
        b=fqhJufD/QZ8FvPTMOYyjn1J2RWIbjFR5wCQL1TrhqbP+fh0BRdUpDzAO7AGzM0j2qZ
         ZD8TMIAHBdD4K8mkjQ4xEulpmDU0hrrPUXQN1m6fscpZrSmvDCQbSyMmQU9Ix6nrzYbc
         vF+NQPfOrRDv3yH2nJffFKz7ZNtG3kRxdWhHUY9Jk1BcydYBAkquCPhY59h4P5df8z24
         p5Elh3Deui/6rpxEpPwBVayT3nMmCfz96Li2+rKvzG27FMMaKqHfWG9eMRmYxkYcL53o
         kzLB8THz5B40wxg0EU5zlOV6nTdCav6Ondshr5zq1Hogy7N1eg6/BwPgmJppM5JYix3k
         P2Pg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of baijiaju@tsinghua.edu.cn designates 139.59.37.164 as permitted sender) smtp.mailfrom=baijiaju@tsinghua.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAzFfXOUjMWgFKH3LuodGr9dJi71QMgByTIB+HnY7+I=;
        b=RIu7vPS/q5KxTiqTkuR6xVDfWWoLrQRtgiVQDYK7FFdrlERlENjSP7Q8rl8wTbGPij
         CF3b6jj26wEushFgJ5lPLhqv8ALRYjqTvQgQdN9+qNyliz8YRxNIFYDewphZmKfTlMx6
         t63yOQXXt5I6qRv0On5uECo78CGc2fa2aALxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAzFfXOUjMWgFKH3LuodGr9dJi71QMgByTIB+HnY7+I=;
        b=BAtuIGqx3Zb8LyEWbOjA/4E4Pfz5ogeTuL3Sx1u/QR5TrlR4GAuA8L17Yof0kgoI6Z
         gc6LvQ8XQGiXWPgbysM1Y3EJo9HajfZNQ9kHVPMvRY0VWTfFqwri7i1Q7iq2+WUgPOCJ
         dHSvObPWv/iPzoey4H3GTCFlq9suhVchBaZ1vs+wkYIlYQITYpmUKefn+1JQxGRfUnho
         +UQSzTi7ck/asYZSuL7BqnOcreNLwFLOn4soHWm9sa4ZyhRoWNj+zG4U34Ps3S3v/Crw
         eHoCUHQJd2BXPI3q5tFD40iqTvf3tvtZpMuO8GLvHVXFR7EU8BCo/LawB8/rHGU+1/HE
         o49Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531qh2mPI5dJT6cBaCCATWwI4uw8hYnJUpFryO7p8grw909drvJc
	rFn6SxZcl057nPsy9OcR16tNyw==
X-Google-Smtp-Source: ABdhPJy+IFYp3f9cEp/UiUY2Kj+Uz2fjVo36z5DitqnJECMMn3WmHf7OQI3ZDGJh9cuMBaKYkChfvg==
X-Received: by 2002:a9d:4c97:: with SMTP id m23mr7147558otf.154.1590858273228;
        Sat, 30 May 2020 10:04:33 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:c54b:: with SMTP id v72ls1807634oif.2.gmail; Sat, 30 May
 2020 10:04:32 -0700 (PDT)
X-Received: by 2002:aca:5ac5:: with SMTP id o188mr8371012oib.130.1590858272863;
        Sat, 30 May 2020 10:04:32 -0700 (PDT)
Received: by 2002:aca:edd5:0:b029:ae:524b:3039 with SMTP id l204-20020acaedd50000b02900ae524b3039msoih;
        Sat, 30 May 2020 07:42:46 -0700 (PDT)
X-Received: by 2002:a17:90a:34cc:: with SMTP id m12mr14658597pjf.123.1590849765847;
        Sat, 30 May 2020 07:42:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590849765; cv=none;
        d=google.com; s=arc-20160816;
        b=AbIyLvxExtafrK7+5Za0KtkgBc9jkg8bTDm4xg6fNiO0VteMfQyYohijrV6O2yv6Ip
         PicjsRw74dI0g9At1l/YJCxpYJDmgkqBStw12zoX0qgcUJvL5rLWTf+kNveZJE3L3KbI
         CTjEN2ezTIVLzuz0YRB5Mgf2IBLYFwLlypk0nfzTppiedvtFPCFt5fU3c7VOQXafr9TV
         znyYZnOTc261V1QuVkiQrgiYg/1srjaBIQ2X394FpK7sxZNF/8dIoBisA7FlD5d4Lwq8
         SwZBkzra43IDN1ZEkWqNdY7y8NSQJKOVXxUmPAsoEBXPrmoGa1S8oZ7aHLOCWMxOyLnA
         Gsxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=B9CJxiy2hl235piDaIxgzcMPEkV3FooBocBrJ27K+Vg=;
        b=WpESZ7WoHDxZJVfHxfQLUrgbsM4XYmqbUFBFKPBgp6p3Cfnt1+whCyGQJ7MuqSqAqV
         W1QXoLAIcbVYS8cxJgGCyPH7/g2sn/0yZGzU3GiNQ8s1HyQoN/uUYvULSnYt4KwhdP//
         4CebjXQux1C7hJ3yqt75mwOnDGkEg7wDRe3a2wPknhQFQcKNguEkoj6QJURbbyp3MBNu
         LaCk9EqVdlBS0xcO4xq5LZ0WLN3GnUhZmTrjKVD7s03IdoDlveP4CmpHhjWAS5qlgeij
         s5r1Im1wUVtrXluMyujwmBhA2RzRzt1K2dbOsqaSl9XwPEA3YT2gUr71XT4Y7MhMVlG6
         quhA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of baijiaju@tsinghua.edu.cn designates 139.59.37.164 as permitted sender) smtp.mailfrom=baijiaju@tsinghua.edu.cn
Received: from zg8tmtm5lju5ljm3lje2naaa.icoremail.net (zg8tmtm5lju5ljm3lje2naaa.icoremail.net. [139.59.37.164])
        by mx.google.com with SMTP id f15si908634pfe.297.2020.05.30.07.42.45
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 30 May 2020 07:42:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of baijiaju@tsinghua.edu.cn designates 139.59.37.164 as permitted sender) client-ip=139.59.37.164;
Received: from oslab.tsinghua.edu.cn (unknown [166.111.139.172])
	by app-2 (Coremail) with SMTP id EAQGZQAX+vbXcNJe9wN9Aw--.12710S2;
	Sat, 30 May 2020 22:42:35 +0800 (CST)
From: Jia-Ju Bai <baijiaju@tsinghua.edu.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Jia-Ju Bai <baijiaju1990@gmail.com>
Subject: [usb-storage] [PATCH] usb: storage: alauda: fix possible buffer
 overflow casued by bad DMA value in alauda_read_map()
Date: Sat, 30 May 2020 22:42:30 +0800
Message-Id: <20200530144230.3550-1-baijiaju@tsinghua.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: EAQGZQAX+vbXcNJe9wN9Aw--.12710S2
X-Coremail-Antispam: 1UD129KBjvJXoW7tFW8CFyUJFW7tw4kZr18Krg_yoW8Wr4rpa
	y3tFWjkrW8XF4a9a4kAF97ZF9akwnrtry7KrZrG3yDZw1ft3WfWrWfKF95XF1YyFnrZF4F
	vFZIqryjgrWDJaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUk0b7Iv0xC_KF4lb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4
	A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IE
	w4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMc
	vjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwCY02Avz4vE14v_Xryl42xK82IY
	c2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s
	026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r126r1DMIIYrxkI7VAKI48JMIIF
	0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0x
	vE42xK8VAvwI8IcIk0rVW8JVW3JwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv
	6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjxU2L0eDUUUU
X-CM-SenderInfo: xedlyxhdmxq3pvlqwxlxdovvfxof0/
X-Original-Sender: baijiaju@tsinghua.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of baijiaju@tsinghua.edu.cn designates 139.59.37.164 as permitted
 sender) smtp.mailfrom=baijiaju@tsinghua.edu.cn
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

From: Jia-Ju Bai <baijiaju1990@gmail.com>

The value us->iobuf is stored in DMA memory, and it is assigned to data,
so data[6] and data[7] can be modified at anytime by malicious hardware.
In this case, data[6] ^ data[7] can be a quite large number, which may 
cause buffer overflow when the code "parity[data[6] ^ data[7]]" is
executed.

To fix this possible bug, data[6] ^ data[7] is assigned to a local
variable, and then this variable is checked before being used.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 drivers/usb/storage/alauda.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index ddab2cd3d2e7..79d4c8443f27 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -565,6 +565,7 @@ static int alauda_read_map(struct us_data *us, unsigned int zone)
 	unsigned int lba_offset, lba_real, blocknum;
 	unsigned int zone_base_lba = zone * uzonesize;
 	unsigned int zone_base_pba = zone * zonesize;
+	unsigned int index = data[6] ^ data[7];
 	u16 *lba_to_pba = kcalloc(zonesize, sizeof(u16), GFP_NOIO);
 	u16 *pba_to_lba = kcalloc(zonesize, sizeof(u16), GFP_NOIO);
 	if (lba_to_pba == NULL || pba_to_lba == NULL) {
@@ -622,7 +623,7 @@ static int alauda_read_map(struct us_data *us, unsigned int zone)
 		}
 
 		/* check even parity */
-		if (parity[data[6] ^ data[7]]) {
+		if (index < 256 && parity[index]) {
 			printk(KERN_WARNING
 			       "alauda_read_map: Bad parity in LBA for block %d"
 			       " (%02X %02X)\n", i, data[6], data[7]);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200530144230.3550-1-baijiaju%40tsinghua.edu.cn.
