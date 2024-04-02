Return-Path: <usb-storage+bncBDUNBGN3R4KRBMMGWCYAMGQEY36NHAQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id B7200895460
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:08:02 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-1e2880afa7dsf588065ad.0
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:08:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063281; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qsm3dCznnPkHHPJ1Lq2rZ/dUvRPrl+y2I3FCCZu/mbFZ6uyM9kIKUTYIQOIq/QvGuV
         MWgccync8GOyo3FizEiQlAKay1x5T5dKMLTNgZp1aOungMHxdC6Lpxq5E3yu0Q+FabRD
         d2X9dyyG+HEBcRFrhmMJD2d8utLAGoOjzkUx8YBk+cDHTI43DMSxswiGP8UXwt1Z3Is0
         3Xi5oE0qeuuSBNCBR2Uqbt3gnM8saMsd4VxyvjwZui7PAitmybGSbPnS7tjpfZONW/hd
         zqefbvKz0YCz113GGzZLfpLDZmnnMRDoJhkUvjCCDoh9HS/fQ48mW5qvkXc+Ti41KtYX
         /tdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=smhabm2CuGA4HFwU2xbqXLq4VN7bNxpkY8Rf2PqDVg8=;
        fh=4ng2Ua7cJayOvc25bu7Qabp0sbnQbOsBzf/TWBEFJ6Q=;
        b=FEYD4wfW9OIi1qZFE8CbHdnhgNCpow4W8lYlhsUOmy9gaGj2VLUemhXgd4dk+t/C+e
         Lw4CeROA3isZHPXyCH8OsE6rAzzjW9Fk072gjV7ZbiwujCK9bJ0AlGlEH75+16n6l5Ga
         4ZWPrHaRcGhTMGw8dFQp5gtwWiHD+2OQScBpE27lXbU1eiqw8I1UCbjjvhEsP3weBcHH
         w5ekLK/nuXCueJyRT3Njgaxo3/0Dc43x2+2FIg4UDW6EDoYNbnChtGz/CBR3sQr+FB7D
         ewnLWKmWX++Iln4jp2tX6br2iPK99O+1yR3OyuwiCa7zDzGDJs3QwFVL2rWMA2WZ7XAT
         KqpQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=DrVjcW7m;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063281; x=1712668081; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=smhabm2CuGA4HFwU2xbqXLq4VN7bNxpkY8Rf2PqDVg8=;
        b=lGJJvQBYBB/ilHPa5gEprmVCSQcVqcHnrQey8HbiZMUG5mpOaaZY0du1VeT1Hwpd6E
         OOBH0w+rgsV+563FhkFmyN6tHw6ZS67oPQJrG1GY2zLSHI5uFpSQJ7zVik1mK2H+X0Ts
         JqJfSP96sBbQ54qVnSPQ3EFV+Na77kgkt2n7U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063281; x=1712668081;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=smhabm2CuGA4HFwU2xbqXLq4VN7bNxpkY8Rf2PqDVg8=;
        b=b9jRpzcjCsNfp4f8zikhj8HJFRnZCPNT+gq4y/Ta/BaZYR2kzvMcfMOzjF65LupmOa
         7TlvcvXnofhRwLkDXAN8f2rWXi0hBSB/Ba6NNzf+JdwO/pSWA4wlRKBtJr7Gjk02WTTh
         Vd/L/n8QO1r47Ok5Zr0fotC3djZ+P/JzSaCyVdiAaXMuOtWxegY/A+SdDj7dC9CuuXJ1
         shR66mAdQStIAIHKwv7L4mB80wqJk2swCZKr2l0/gbAa7ijip3SwVe/ZDQFhXiNHwApY
         r+9GQrYVwhoqB3ftdqY6EY1+4uHZmYoHzvwL8sH5SID1WngY0wzOz4t52WtI519y4sec
         K5eA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUtESBvjobnROpszGYqJaCRvAGaoYh7g8L/c+wm1BtFUVSwmmzOzE/Kj238kgwoWwk0PLirC+iFEODm/srqmH12xmkixIFguI2s
X-Gm-Message-State: AOJu0Ywmwsx2RCkwQSYk2iPYJsf8WOglfM4tenFR2QnOJO2vH39OJBMn
	2otrIuXMJDKmgPXvrCPTWLerd9RLAkpY1qwXc0KVuGhgbvB+zJhfR7RSc97WR1U=
X-Google-Smtp-Source: AGHT+IE5900Qtk+zuLC0rkunR7GTlSA3SPljlGvDJAzTJhfEL/p31IZ+kNGo34u3wsTUtxoCcAPtCA==
X-Received: by 2002:a17:902:c402:b0:1e0:185d:a73 with SMTP id k2-20020a170902c40200b001e0185d0a73mr19848040plk.9.1712063281277;
        Tue, 02 Apr 2024 06:08:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:e5c4:b0:1e0:b04d:641e with SMTP id
 u4-20020a170902e5c400b001e0b04d641els4044768plf.1.-pod-prod-00-us; Tue, 02
 Apr 2024 06:08:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXrO4nOBPF0vAt/J/NcCmhNZSsMKVUVr1mN9GKYHA4MF66s86PqV/xZGLq5lTGlxzAeaIMfpKQMzDxDLcBpaZr1AO82vHgO70AyTCBTPKPUlLKLQ/4=
X-Received: by 2002:a17:902:ea0e:b0:1e0:abdc:1507 with SMTP id s14-20020a170902ea0e00b001e0abdc1507mr24241207plg.17.1712063279827;
        Tue, 02 Apr 2024 06:07:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063279; cv=none;
        d=google.com; s=arc-20160816;
        b=j2exoRM2+xxAXTpWiaqGhhGqU97+hXXCLsx2vDTNCcASYPjgRgJOLD+qZ5q3OBG9/S
         iQ+IwXO6TUxsmzgr7LMFpUprlnniGdrJKJZRKOtOZKutrZLL0XXoH4bKiBErbpCXFhqm
         8CC0AKgrK/5xWFeAvyB6iD9mDk0oHi/uJTk8j7yoX83DF4OYDstXwYOw5JeHTGRPvRvi
         6MW9K4IYfqtFuedKQ/tihwp7h/36ZUWrG3TbQ+vJ1ZN6r+5OKIxYHc6yQnrbTRnVSMDN
         T7KGTk82OYVYhLVLPLxU7Jm4YSlBM3EDch0lyWWUe8FHudqMg3NLQCL/JCxYW9B7Gapu
         bgUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sJ6rjK8z01EnBB2k0fCyz7Kt9YMXIpERYRmm65NY1xs=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=Gu9RUIjCJON05izpFTs5wZe+3iCpO+cvSpfvMbTW0FLIwYBVbiuwgC5lrecZP3a0gi
         tHP7OLceijDZzs5tU2LnKM+vud5cJ6+/1iAzuc5Q4gjK2cKxU7UkvYUqYB2GxLY9RYI8
         PUlWT8EJ50Wq4eXxklA2ttQ6tNPIn8xUqR+YsfiC2vfoe/nhiGegrHOngeOGeHWC58lV
         aQHJXWdbZ+EsuNMYzN3LjQCNSeEVjwUVOkKWSCsHugmYDalUsR0SCWhVqRuJH/Zl0OMW
         7VVtVwgXaaxcVhbXjh7Qz014hlLQB0bh9YQAajQEiNztTxZzCL4Ib+KrUF0tEPjQoS3e
         XQyA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=DrVjcW7m;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id f12-20020a63100c000000b005f057f9ede2si10952147pgl.858.2024.04.02.06.07.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:59 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdri-0000000BFo7-1xWX;
	Tue, 02 Apr 2024 13:07:51 +0000
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
	megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 22/23] uas: switch to using ->device_configure
 to configure queue limits
Date: Tue,  2 Apr 2024 15:06:44 +0200
Message-Id: <20240402130645.653507-23-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=DrVjcW7m;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
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

Switch to the ->device_configure method instead of ->slave_alloc
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Note that uas was the only driver setting these size limits from
->slave_alloc and not ->slave_configure and this makes it match
everyone else.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/usb/storage/uas.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index ca6d01fc4b9456..a48870a87a293c 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -821,19 +821,19 @@ static int uas_slave_alloc(struct scsi_device *sdev)
 		(struct uas_dev_info *)sdev->host->hostdata;
 
 	sdev->hostdata = devinfo;
-
-	if (devinfo->flags & US_FL_MAX_SECTORS_64)
-		blk_queue_max_hw_sectors(sdev->request_queue, 64);
-	else if (devinfo->flags & US_FL_MAX_SECTORS_240)
-		blk_queue_max_hw_sectors(sdev->request_queue, 240);
-
 	return 0;
 }
 
-static int uas_slave_configure(struct scsi_device *sdev)
+static int uas_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct uas_dev_info *devinfo = sdev->hostdata;
 
+	if (devinfo->flags & US_FL_MAX_SECTORS_64)
+		lim->max_hw_sectors = 64;
+	else if (devinfo->flags & US_FL_MAX_SECTORS_240)
+		lim->max_hw_sectors = 240;
+
 	if (devinfo->flags & US_FL_NO_REPORT_OPCODES)
 		sdev->no_report_opcodes = 1;
 
@@ -898,7 +898,7 @@ static const struct scsi_host_template uas_host_template = {
 	.queuecommand = uas_queuecommand,
 	.target_alloc = uas_target_alloc,
 	.slave_alloc = uas_slave_alloc,
-	.slave_configure = uas_slave_configure,
+	.device_configure = uas_device_configure,
 	.eh_abort_handler = uas_eh_abort_handler,
 	.eh_device_reset_handler = uas_eh_device_reset_handler,
 	.this_id = -1,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-23-hch%40lst.de.
