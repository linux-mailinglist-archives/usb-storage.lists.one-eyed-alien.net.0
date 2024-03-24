Return-Path: <usb-storage+bncBDUNBGN3R4KRBHH3QKYAMGQEFFUDALQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0E88882D7
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:56:13 +0100 (CET)
Received: by mail-pf1-x447.google.com with SMTP id d2e1a72fcca58-6e6b15967dasf3549311b3a.2
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:56:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324572; cv=pass;
        d=google.com; s=arc-20160816;
        b=z+5Apw0Ht9VtSE78JClvgVPeLwaKsKsjc1onAfqCCKhpmiS/tHsWLw6lHKnHTVOsKK
         v+fxo1+a5VrlX6RNGkDmn53b2Byyp+5KAoMny5tyJ2SYOZvLKF8/0nzfRgy6i4lm1MNd
         A68e4ULECKobi+6L2A4K9Yj5ETk7JyFy+Diwq1/AXPXwrt2uxsTO7UJMIGmLZVqUevRa
         YrPpf2feUpwgOQ+tl2vKYmG+kwLZjPZdrlViAv6ugYoSES67CJXBwOGE9UivTkTwQhB9
         mQfDsE+YV/Ao05O15dCMLQZkIuomDlLnipfOgdmOn4MbLrIFmidjG7/yIGdzT5YU2s6p
         Umlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3qkAVGLFdgwcM/LQw517dxKYFW1AP6Xl59MD6LnKLYc=;
        fh=gk/dss1LHry2KGoFPFEE0UHaKDIZ9xF6pluzDWu3KBE=;
        b=JD7GdKMLx/HAIqE7T4vLKT/W/A+p/cOYo4IdP523KL5G7/0Dg8kb8wpKOrR0MrXz7c
         +QiWNGfCz+/KUxPZyGXOzAwPAcbJ4WYCMp27n+f5DWynAlUXgm+LaBJD8NiM9do483Un
         D8Qt3l11vNwglAL8SHA8L8+K7IU/yPhdDypnRsKZBollARyA10P0Hu2GzgAQYcYL3/yW
         I4yFyuMGRw2mh9u9qJVP/GVWBnGDCOzSnwWrEVRBhHLzyiAT10PQkss/kjKdO2nPtlXG
         MLkjbOMGPo8Hcz2w8Z5myxUeCTw26SeYNzmiItI37sOvAcgMLSRekpb9MkurlC32TGlq
         0WRw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=yaNYGNDq;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324572; x=1711929372; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3qkAVGLFdgwcM/LQw517dxKYFW1AP6Xl59MD6LnKLYc=;
        b=h3yeJcYZdsCsI3seGX7AtegKNSNOu7/xDw9YTNgf6cSTQCRJ9U+HzWL9vxgolS/7i4
         tshwIqKVKWxKDASmnEoHHEzdedGPBKES+paFE0myjP0uXjtijDJr/OmNwtkTznJ9Sjnr
         ODshL3u2cfAjiw2CxdvGAEBMpaEDkrox5izyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324572; x=1711929372;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3qkAVGLFdgwcM/LQw517dxKYFW1AP6Xl59MD6LnKLYc=;
        b=Wk6jH1J5V75VaLUbzzAvA41Xk/5ktf+calQZqCsfAc1IWgdURjKM2qCiJZ+w1GCPLD
         +oP5mTKeAw2/BADYFFa0jXcngBtPbzdqpGz5NQZPKAji1lvYrncB8pezwsl2roLh/p3Y
         XZK4QoJ+A3jpg2Vle1pwXcnRNhWNgREOVGpR1aRPB+9SPx7L+3+uIBTTcyEvHT1zcJ1h
         xG6cDLNrdr/HyyGJq/PQ76DfVgaRkynvG6J3DxmMbSHTmtej4ryGNVj/Q8ROD3v5QfEM
         ++0PKaNCewjTUMgH8Brk0/XCapQjMi3whfE34i6x/oDot9s1gM1olu/Tv+mbSwrI2IrQ
         ayXQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV/qXmqIqD6fAMWick8LQGXsgLxbNdGE13ANzslLuYC+ST3EOH6llx9PwoJYheCUi/B6OT95u34nffqi3qL/5PFQxS/WDjJh360
X-Gm-Message-State: AOJu0YzL1svj2bfu3767gYzIwCqOrPF9r0161Lwn18145iUe5qTgKyNp
	XbPhzidC+kj2qSOLl9+ouIxwGo4Q1W/gZoYfr58SarsrLqpE1bZG5UjFRgCkVQ8=
X-Google-Smtp-Source: AGHT+IGVZszOYoE96sfoKi2APIenFVycja84Dd5AIedLtYFfcbZRpZEJOQeoNu9bdmUlGGQM1RNh3A==
X-Received: by 2002:a05:6a00:3a0c:b0:6e6:8c8b:a45b with SMTP id fj12-20020a056a003a0c00b006e68c8ba45bmr7575681pfb.18.1711324572472;
        Sun, 24 Mar 2024 16:56:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:6708:b0:6ea:88c6:1f11 with SMTP id
 hm8-20020a056a00670800b006ea88c61f11ls889941pfb.2.-pod-prod-06-us; Sun, 24
 Mar 2024 16:56:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVCRxpO59nSsK+7sqOfENBLr8ZEYUqn5Q8zuFb/0aFg4D7TyDHfey/y22u/66R2tjjBQveKmFluRCkXnbnVzhAJ49F+W16E2jnkKeewkV74efFN0Bo=
X-Received: by 2002:a05:6a20:b98:b0:1a3:a039:d11b with SMTP id i24-20020a056a200b9800b001a3a039d11bmr5180489pzh.24.1711324571269;
        Sun, 24 Mar 2024 16:56:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324571; cv=none;
        d=google.com; s=arc-20160816;
        b=FuZ58lu8ZiudKNl8SNTAfznLBIy/Nv0RV7Lzl58ucLwH01HjU4e9oRUIoc08v7nV31
         IYv+59VWEro+BFvJyXmAVeCWlOrunGtA2qNLWLmc72aiJvuAGDOBb6sS9z4GpPznxTYn
         Qp4CnON1RQaEkau6oZblSY89//HFol0AkT7o+Y+R6P9T+mNgHDpGg0+Hzm8WmvL3ljDi
         BLbAiH0oj2tF8cU09SZYSPCSWxMLVzXSgto2YQpT1AxAM3jZMwQkEcmqQ/3r+nne05in
         0Xw/m43N5+TD1DpEYa4Svh21Fc5yjXI9gs/jpY1rJ/iNjxiV5Q/eHzT0q2ge1eTXHh9p
         mI1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ouyfZJOprAivUD3pQoGhzFC7pBq223cKtZHCDHGO3TU=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=IvIEGl5hrgOQRPJwoPN5O+eKuC9QPsTP3C0VEfAYoEwD+VFyRi6b932gvO2GdCVpJD
         wXHKgir42DKua917Te87T/ppR3bkxW1j3jXzsmwP3qIGeNb6KrU8x3g2N6CXu8mhbDYP
         bw9LmiM7VG/iavVqui4CRBwBjALYHwF85Qcd66rNmn/MguoTYHeKd34doN5N93e8hBhw
         8mSekJAF33CF11Ng9ur01jZJouE4qtT67KN4dvjn2M2ALDOLW4XkWWRQSpbmcp38zbsb
         wo/4DLFnhHJSEs0uV+cCyjRVW1JaqUbrtTzu2lfeI9PT+deMZwauJQ10urM1ep8SuJnn
         SRnw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=yaNYGNDq;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d3-20020a170903230300b001dd2b63e5d5si4181160plh.439.2024.03.24.16.56.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:11 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgy-0000000Dzft-48tF;
	Sun, 24 Mar 2024 23:55:57 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 14/23] hptiop: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:39 +0800
Message-Id: <20240324235448.2039074-15-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=yaNYGNDq;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
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

Switch to the ->device_configure method instead of ->slave_configure
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/hptiop.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/hptiop.c b/drivers/scsi/hptiop.c
index f5334ccbf2cac3..e889f268601b4f 100644
--- a/drivers/scsi/hptiop.c
+++ b/drivers/scsi/hptiop.c
@@ -1151,11 +1151,11 @@ static struct attribute *hptiop_host_attrs[] = {
 
 ATTRIBUTE_GROUPS(hptiop_host);
 
-static int hptiop_slave_config(struct scsi_device *sdev)
+static int hptiop_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	if (sdev->type == TYPE_TAPE)
-		blk_queue_max_hw_sectors(sdev->request_queue, 8192);
-
+		lim->max_hw_sectors = 8192;
 	return 0;
 }
 
@@ -1168,7 +1168,7 @@ static const struct scsi_host_template driver_template = {
 	.emulated                   = 0,
 	.proc_name                  = driver_name,
 	.shost_groups		    = hptiop_host_groups,
-	.slave_configure            = hptiop_slave_config,
+	.device_configure	    = hptiop_device_configure,
 	.this_id                    = -1,
 	.change_queue_depth         = hptiop_adjust_disk_queue_depth,
 	.cmd_size		    = sizeof(struct hpt_cmd_priv),
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-15-hch%40lst.de.
