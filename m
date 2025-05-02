Return-Path: <usb-storage+bncBDUNBGN3R4KRBC6W2HAAMGQEMRQ5BWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id DF151AA6AEA
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 08:49:48 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id d2e1a72fcca58-7391d68617csf2752784b3a.0
        for <lists+usb-storage@lfdr.de>; Thu, 01 May 2025 23:49:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746168587; cv=pass;
        d=google.com; s=arc-20240605;
        b=WEuPK/DONnfKPhzujRP/bYDydaLfIkjmiYX0yAHPQgU6zFHSJDlWhvvuV+1Y8zN2Qz
         BK0FY5YLAb1iwx3H7UbN9dxdhiMoZBi9apm77QI68F7kD+5E0ACqJNXnJ1RO2Th8hRYk
         Lrg+Ec6offdWfZ9k9GwwRyFzUWUKhIabm5d7MISYF99tVhuK3vocsXGmIQUEAYkqzKTG
         HYnfK+fQu0S8Cm9DZMNL7FOIyUhQq8NUDNfUJ6rCoo64U69c99pLceh4/XWNte3SsAv9
         n2TJiqqYhf1DHYnXhrQolf+m8wYG+wdh9esQcuWt+5TmPCIywAvMvFEWpSZUanokjwIa
         2J0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=V+9zCQCUxnWcFmcGw417N7/4RXzjEoe248XAsWvM4CI=;
        fh=VQL0qVo/yzi0qUAw2XSFTvKwj5clG/df6maSmj1ppmk=;
        b=hkJE+G8QDIGXpn7T3/sQ6Meu086a/I/iY/QoOx8088OTufettvZBuaXbNqPats4o++
         Ou4sIYf+cMxOqN6h9tk0Bi9ySWMyLQP4/aB8NYej/XBzbzatoj5SU06mAd30ibPgxxNX
         eaOBDex6Gp77aWRbsLkDtzkCfGe5MbHJXRZ+cgUqGgM+0D+s/10dXiZExwkceerxHXQk
         sxOVxFljEB9+xK+63dLbPk5FJNjlbZ+y8UvQ2tRWCltqlrMnBo/ir2YM5Lpsd2uty9un
         tFU1FVsnCNFBwu8+na/KIQvjgBFG0kZajxZk4zt6QhwedZSNMjHIPUDu7ZxLQ41bROE/
         rJ6A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=VtnQamSB;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746168587; x=1746773387; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V+9zCQCUxnWcFmcGw417N7/4RXzjEoe248XAsWvM4CI=;
        b=KhU0knb1N4IKv4Rw6GSAbc1lPVEGLopscgRXEPkG2l1Jfs8NmSg0QGB1bYOxV8HKWV
         cFPvaWDKsCLjwXhUd8/WycSyuX4GmMx0VI8aJl7/6yr6GVnoTYmNO976pPjggAWqvVet
         LAbiVVNJzT3Q7aB2pdKwBm1xX5waa1/6NPTa4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746168587; x=1746773387;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V+9zCQCUxnWcFmcGw417N7/4RXzjEoe248XAsWvM4CI=;
        b=GeWIdh6/8r7OpDE+HNdy6ow3jXGw0e3rAhdTpzhjk4d5IdZyFRkIesf7YNQvvTIAur
         sWiDQ75w6iqdpp0kQHDH6ye1IPUsTOrx1eVYpU+rijLC5gvp7LQKklTVJIVwo+1yTflm
         /bRfkU+98VNR8QLwn+V4VrJgZrYdLpjpnjfXf6YTIkgedha7rCoSI1ClurmZ/DwztuSy
         72Qs47vVfWSy4c/QbOx7ouIEThjLkoAszYcD9FCpLlrpPT119WoYMLgS5kqwkcSnaegX
         /o7HrvvdbP0EA8yEq4IW8xS89YC8rvPFNwnSp3pqdO22TaEPFwmri+tnKwWeZrHeEfRx
         Z9qw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVliR8TiJoOzv7SIhPV9yoMuOTQBKuRQKvv8wr/X1HDmRd9bs5vPHFKZjU/JT/rPE7lTl+ZTA==@lfdr.de
X-Gm-Message-State: AOJu0Yx5q1AkmEuGEnb3Q1mfqw46K6EEm/6gb6t0iqSFyS0pZHzUDtgH
	pbFwkHFf0Tf3MckXen9Q3tYtsBmH1sVxalOH0mTG8VCUMxLwea3MgN/li5wf+hE=
X-Google-Smtp-Source: AGHT+IHKEm29xjU3vcZMdej+7zbrvFfXKT2tydSE4xQYykmIk51umLkjK+nYsUFXxHlTlLdud9QHOg==
X-Received: by 2002:a05:6a20:9f4d:b0:201:8a06:6e3b with SMTP id adf61e73a8af0-20ccc251248mr2978178637.9.1746168587330;
        Thu, 01 May 2025 23:49:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBGkpBNOFyHpNqoKGYK0G1R2CtllUFRqDx7Q9yUBj9V1xQ==
Received: by 2002:a05:6a00:3c82:b0:739:7af:cead with SMTP id
 d2e1a72fcca58-74045979b32ls1422647b3a.1.-pod-prod-00-us; Thu, 01 May 2025
 23:49:46 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUTeYzcp1qZXjVZkRSMEHM2BZNNnzRpmP46w9kHZkVQAmyZVep8oEHsyGDSPkAQAlA+rtzSk6roxxONNg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:3294:b0:1ee:c830:abdc with SMTP id adf61e73a8af0-20bd8646203mr6979803637.15.1746168585765;
        Thu, 01 May 2025 23:49:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746168585; cv=none;
        d=google.com; s=arc-20240605;
        b=GPQp55T7pnEn7MvTNa040kNngyiR4JE13ZMB59OB+iFyZBheBCCEQQKE+69YRw30ap
         4/Zu63zD+sCt3V9fmnKVBp5GjfoYyyovxKZu0okzQVcssa4fzNB8w3W4MWdqxbzaAC6o
         O4OuD1ZXGpqI1+H5w+wIfqBOaAqmU9NFlmo78c1BuuMHqamU5hIcOueUK12docQLfF03
         5Ob9Z4pmMnGqNJRTIsZC/cOA8pBLG7w27OPKe3wQPHAPekpxr/fdyguJhagOzWvVB8z9
         ecySjCsP/XmYCNCMM4MVOQUafs/+T8r6rly7FKSk+qywR8moxU+sI/7r1waun50xknhN
         ZuQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HBEN1Ny/Xmt6F8G1EKBQS3gVyJmGJpibhAvZz+npVsY=;
        fh=x2A6uL/apOIfw94ZPPIPls4EhmHGjuKCDF4VgYkQxIs=;
        b=Zl19+zCiD8iONu0oyRowlqKRdtI62SLExzoOokszFRUBpgb5C8y6AOc5kuNzPwmEH9
         gqNFUUGzk2NqOsOy/zozhI8snLPMVG/DDN7rClOcbL1XLBfL6pHjStlOvhlE4hBcg5kg
         Xg6RmXqkFAfuEiTFfxdyOaGVsvOO/fknAQeQDgCoGz/pLXq6ezngSJEDNkqZw9eiwr4R
         K6O38CtqnquKLOWZwYxUvW3+EEGw9+j6etT21n/cNe25lKFdDfOm0oc7oB4LCPWCMdIK
         qN40kT3psJAFsxYiIUGyx1ig3+ehKlkC/fn5evG+DLTOTB8S7xz7fSutLdoC/7Rq4ptL
         +ANA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=VtnQamSB;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b1fb3b69f90si53069a12.166.2025.05.01.23.49.45
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 23:49:45 -0700 (PDT)
Received-SPF: none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [185.143.37.16] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAkDP-0000000114o-11kC;
	Fri, 02 May 2025 06:49:43 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Alan Stern <stern@rowland.harvard.edu>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-block@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-mm@kvack.org
Subject: [usb-storage] [PATCH 4/7] usb-storage: reject probe of device one
 non-DMA HCDs when using highmem
Date: Fri,  2 May 2025 07:49:21 +0100
Message-ID: <20250502064930.2981820-5-hch@lst.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250502064930.2981820-1-hch@lst.de>
References: <20250502064930.2981820-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=VtnQamSB;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
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

usb-storage is the last user of the block layer bounce buffering now,
and only uses it for HCDs that do not support DMA on highmem configs.

Remove this support and fail the probe so that the block layer bounce
buffering can go away.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/usb/storage/usb.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index d36f3b6992bb..49bbfe4610d5 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -1057,12 +1057,15 @@ int usb_stor_probe1(struct us_data **pus,
 
 	/*
 	 * Some USB host controllers can't do DMA; they have to use PIO.
-	 * For such controllers we need to make sure the block layer sets
-	 * up bounce buffers in addressable memory.
+	 * We can't support these controllers on highmem systems as the
+	 * usb-storage code lacks the code to kmap or bounce buffer.
 	 */
-	if (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
-	    bus_to_hcd(us->pusb_dev->bus)->localmem_pool)
-		host->no_highmem = true;
+	if (IS_ENABLED(CONFIG_HIGHMEM) &&
+	    (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
+	     bus_to_hcd(us->pusb_dev->bus)->localmem_pool)) {
+		dev_warn(&intf->dev, "USB Mass Storage device not support on this HCD\n");
+		goto release;
+	}
 
 	/* Get the unusual_devs entries and the descriptors */
 	result = get_device_info(us, id, unusual_dev);
@@ -1081,6 +1084,7 @@ int usb_stor_probe1(struct us_data **pus,
 
 BadDevice:
 	usb_stor_dbg(us, "storage_probe() failed\n");
+release:
 	release_everything(us);
 	return result;
 }
-- 
2.47.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250502064930.2981820-5-hch%40lst.de.
