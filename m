Return-Path: <usb-storage+bncBDUNBGN3R4KRBVVF2WYAMGQEO22CWYA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id E436989DC6F
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:15 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2a2e6197371sf5009665a91.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673494; cv=pass;
        d=google.com; s=arc-20160816;
        b=MQIHeBIttK6/e3vTN1rieUXByzuomV6kJFgNHaxP2TXfubusQWvTEGyS8aoQFKMpPe
         UM5mSgDTu5edvvXeko9g6vBYou6mmP1VDxZRTQBlr2On3r3bTjf9476moXZba+DDcA7A
         8ckAbyEqDUceQ6VARepv35lhzyT8IL82YKVAZdejXAwydTD8QTYqSjA6GdF6Z+mDQuNK
         nYi75hyVf0gC6kL9SLQjZnzSU7hDZkjOPGjKMWc0UEk+D2busJNWIYi8X+veUhGqP+gk
         bcSEHAA06TS570V8PC2rCDPtciI56/Ntru3l1MfU1KoKDkMOtrxErxGOvVWdbXU0aULs
         m5rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tpgTjmc9uSl/fBoIur2/RKDwOTcfbo5hPj445e7NghA=;
        fh=XoTr+9WdKCTeB0LQw2NNdi0YBAs2aNBABaERJ3uHsgs=;
        b=PF6qMio68ePue2mMYsW18R1/KafwVumfCeQoOxETvaDhK7A5J2NHSYjrvFfqpb5beH
         vo7yNrQsidd9b7h3XHiPBUEZ0J1Jh3WbKNV4Kk5zSfA0UiTtnOel6maog8b2Rw2Ioi7d
         Q76234GgE/rM7Ac4eNLYOicwh1uNDqO8KRqWBN7XRxCeoheoPqQDF9UB4G2Z/+Ou/wun
         6/Ss+SNOW+4UL2lVXnOS0cGDfAmCQyGWWl05kvxiWzHzA1UTHvKLez0U32zHEYG+N4UM
         +86MlAODkbJP19RvXaLY1XI0C1gFKpAHuSvIPbibdi4jpiUItSjqKBBqeRyokJ2DEDIA
         NJzA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=YjuIPpiD;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673494; x=1713278294; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tpgTjmc9uSl/fBoIur2/RKDwOTcfbo5hPj445e7NghA=;
        b=Q2By3rloY4aZV6ZvdbzT4+f8sJ4XemkmJQO0uzykgOB61Rk1TuM8qp3SL6FLMVgAng
         YMTc6XK/gptnRZZ9vMgt4H16dMOOVF3UDRFylDWD9uuhHcXDKUqhJV5Sx3p1qpcnEu1/
         6qS0eDIyeE/mrm9yzfTa7pLrReaPIGyw3cEYA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673494; x=1713278294;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tpgTjmc9uSl/fBoIur2/RKDwOTcfbo5hPj445e7NghA=;
        b=InS0EKCER1Dvi3chyk2Q7jeQ3n9dUmir2SMbh9j/pjNo203bgOXIHdWu4XIsDxZTFD
         u1y88lxZw01jC1RlWzCOy7y1Qu7F22QyVTin/3AQ4Le+6zcZBRpqmO6dUY48+tQCmyRA
         T0P/MLK1R7xMDj64sA4zOpdkXvRqsDVC3nzeH23c9XfjHtkMzZza8s5/KNmh5/6VLWSh
         /X7L1ZumDLXFM88dVEmedJ2fpSUifMhuRJ/ZqSvMVYvrSq1oi55+4gr4aIMybwrxEIw0
         hcAPl0x6ghrZx668wg9pMEcThgPLhtkvYkAZc5Mpptb5F/gQVftGIbkA30U7PyDrOoHI
         T27g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV1ApATFOphGNDVmbGHdj6ZDJoiRPE6Y9tg7YrWbBcA/enyo1BiKLM4EUZ6BZ7lg/5xYfozBH2rfSU2vTcSs/4r2i7GxEB5bhUO
X-Gm-Message-State: AOJu0YzDSBDmlpyDqVkQiHzBGnDhNTIypnoQs7bywh1Ed8CM42Hvz9MD
	KIX6X/M/nfYnIOkEWnwPoa2PUfeAqwC8yATOKdeP9Nv5LzxCEKbBAVGVxrMPoSw=
X-Google-Smtp-Source: AGHT+IEPZQgyrGr75k49oHDb0PDyIAsbQruGmopK3y+f8Y2uydOo66DgCKJWsacRMFT2HSlRdztuTw==
X-Received: by 2002:a17:90a:cc0a:b0:2a2:ad4a:691a with SMTP id b10-20020a17090acc0a00b002a2ad4a691amr10489034pju.22.1712673494373;
        Tue, 09 Apr 2024 07:38:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:6881:b0:2a2:8888:f263 with SMTP id
 a1-20020a17090a688100b002a28888f263ls3414355pjd.0.-pod-prod-06-us; Tue, 09
 Apr 2024 07:38:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWvmEMMpD6wptCzau4zCt7xPVZJ/nQMRndwQ0rQonAVvZIYDoh64T271Vd30srKWlDXHTilo0pTzyp58FNAng9lWp8BhNnroXgnZrEcq8C2OPJnpos=
X-Received: by 2002:a17:90a:130b:b0:2a2:8a0e:1b81 with SMTP id h11-20020a17090a130b00b002a28a0e1b81mr10087470pja.30.1712673493007;
        Tue, 09 Apr 2024 07:38:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673492; cv=none;
        d=google.com; s=arc-20160816;
        b=JfOsy5ZOAPPZiHy/SgVivFDZLb/JPogBltsOTiQdfqHT3LEwHepm+eXiWH1lFtdKea
         CJx7mTNLmsOTDUe9SPAGiHkvH2qIaufghVntSAAafjbYYUuF3wKMKl0T3uOrBzkAjY0f
         df/JjMOYUmqEb3QaQW0PdRg1IY411pt8nLyaTD4NnUe65CqhDrTs4eCLEM6DiJ9FDQK+
         0KIoQ+ju23rRKdTjuhrsdCvCYA3oS6OlIqc7eK5y62fl10qhFv/TT0lmX5HWPQ6TM1NE
         PtiQeu5Az+Z+syL7G81WPMC0R2QTPz2S/JOXfv+m7c07bnwK60iKc5h1E+fB9z0NBm0q
         tb2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=D8DxquL1CuBNuSFc3gPk4WkvzemBPok3WoQ6pw/OFO4=;
        fh=m/UnouQGd5wQxO8F3S3tlDMnGuueFaOVke7s85Uz5XQ=;
        b=nBd7Wk5w7ej+Ip0yoaxw8Wvk4+lqs6vF9MEywdDNrPyNH5jnJx4KxY4HFeAbZl+yqr
         3L7JIrAe4Lk2UR6nPmpSnMsYTw+QHk4mt12ruc7QTUMTwmwsqx+q0W6fTyV0dt7cCAhL
         RCRb+6CVdDAUpdsm+MuEtv5xDcCWh8Sg32vIFYsqVV1ql9qwTL33DR9k3RmDeSr/GtYY
         mJAns6DxGDyCwRYBJ76RNbP0ui9qRYt0OnI2naUyuJgkbBCq32P84xmffGA7Vm94VU3o
         cdTZNYUGrikjsGMxQlaVwoH+Vnhf0tvO6e0IPSXZfxRmhhThye74/koMEyzU9IDFdCn4
         QUtw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=YjuIPpiD;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id w15-20020a17090a5e0f00b002a53adb10d5si3395757pjf.92.2024.04.09.07.38.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:12 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCbi-00000002Rta-0Tzi;
	Tue, 09 Apr 2024 14:37:54 +0000
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
	usb-storage@lists.one-eyed-alien.net,
	Kanchan Joshi <joshi.k@samsung.com>,
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] [PATCH 01/23] block: add a helper to cancel atomic
 queue limit updates
Date: Tue,  9 Apr 2024 16:37:26 +0200
Message-Id: <20240409143748.980206-2-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=YjuIPpiD;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
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

Drivers might have to perform complex actions to determine queue limits,
and those might fail.  Add a helper to cancel a queue limit update
that can be called in those cases.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Kanchan Joshi <joshi.k@samsung.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 include/linux/blkdev.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index c3e8f7cf96be9e..ded7f66dc4b964 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -892,6 +892,19 @@ int queue_limits_commit_update(struct request_queue *q,
 		struct queue_limits *lim);
 int queue_limits_set(struct request_queue *q, struct queue_limits *lim);
 
+/**
+ * queue_limits_cancel_update - cancel an atomic update of queue limits
+ * @q:		queue to update
+ *
+ * This functions cancels an atomic update of the queue limits started by
+ * queue_limits_start_update() and should be used when an error occurs after
+ * starting update.
+ */
+static inline void queue_limits_cancel_update(struct request_queue *q)
+{
+	mutex_unlock(&q->limits_lock);
+}
+
 /*
  * Access functions for manipulating queue properties
  */
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-2-hch%40lst.de.
