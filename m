Return-Path: <usb-storage+bncBDUNBGN3R4KRBVNF2WYAMGQEB22BMKQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DEC89DC6E
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:15 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id d2e1a72fcca58-6ece7b7b44fsf3518231b3a.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673494; cv=pass;
        d=google.com; s=arc-20160816;
        b=B5dv353Qi/yGySUDlT8/CPqquLL+CmP3LpyyHhAVty0FauMkFPc9OknwEONEOsix9C
         cZk2CgJwJOLcVAl5f2q39JydbyYiKL6tVEeM0sFIh76W3ZGa/twqr5nw5asdvpiWNoKL
         RRv3vxo7YpV+mk8XneY5IfuS5gTchO4AdfuhFCImARPlF/9rw/HD9Kl/4OTPxNgbrW/s
         PZySq7qDLJXCvDCOAu94kThCLjZmK01IOWGA528iFyrf/HcoCgyrA5h3S8W1yEJn7ejy
         mEnRBp+92QL4LSZ7OQgueIgTyajJCCABbVSxEdJEZfv9TDeDwc72hVaSfDkXx1PkitPO
         Ee0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4g0csqkJueziFgOdj/I76UOg08sQcz16g7D9NJmQ0oE=;
        fh=dp2ex0UlwcRWcuMamURRXBFlf193QJTWpoaUA4xG4uk=;
        b=vTCyI1AYERifnBrGV9GWbP0h0RcOh4w6DCrmqHouTHqzgmSCsZ2xqN6s2Gji+QIDbZ
         rAl7Tx4F+bDsbIPhimT3/uCPkB86suDAdnzTKoFHJB9NyVj7Ts3ToJGlrVYZdR/wW3y1
         dsi+HLYl6yuc1jKU4irIElp95iswNBCJO6lbzaGqqKKpL2rV0TOdTDdpEfgmUV40lFRM
         0ujWx9Idus76umP3EY4TNAfr/a8iGvUpe6FsAKWLJ4BPSTkEasmQjCmL6MnuY5frVrvc
         WjLESmVHAyyr2MNKBSIsWQIA4p/eQi1fSg3nlVYlZ9B+4eI6tAt33S27RpWcUbgSCyMQ
         spDA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fLPg523d;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673494; x=1713278294; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4g0csqkJueziFgOdj/I76UOg08sQcz16g7D9NJmQ0oE=;
        b=kfAv9V3v/p/fYMSstR2Ws6fx8yVii8FpDCXUf7YUJGcFOVmTns30wwbth7ruX9EZiM
         BfR0wOJ8XGT0dlTMk7HHJYqyn7bJ/KAFUHWFf7J1zQfROuOzoeVI4jVMBFSd395BVJ5j
         6AJSmoTLlWxdRkY+MHy2CcSzTT6Trjb4aB/hQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673494; x=1713278294;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4g0csqkJueziFgOdj/I76UOg08sQcz16g7D9NJmQ0oE=;
        b=Xn3oYrwTGYLDkyKIdTFsZ27AIax0p2VpLWDD0ZJu/TPfKthtuhRyiDrxYp4TxV0PJD
         bu+1ii7LYzIyYgEBfL3iznEIe1DQHiedegjbEwpA8ON/vPdunOfDNKx4MxyCmPNRTcfn
         DHGBJOcQJ2a3SK95wFqeuptpMhDD5omEVeeSeMT1u7aO+bVpExi2ccChw2WL4FU+znRB
         JwbNBHPXh7zlsYVlhLpRFotmb7+jyY5FzH50OrtaL45N4yL5Z0zZ4azG3Eed4wB2BRwW
         qSGgXd2thLq6RThd6q1kSIEnV+fVdiv3v8LAoUCemIIw83jAppkk41oZ+ZhqB4c1j5eM
         TMZw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWECKgIUs4HGL6EyxJHIu88EUrmv7NA1NRaeVN9dh+AUyFwaNQkCkOB86fk/Nc5Je9ltsPpDJSvUCITG7U0RzG4dzrmVoveZm09
X-Gm-Message-State: AOJu0Yy5WlF27VHHMcp9ZynApTtO0QZoigizge65l5G7/qOoMDTPVZhE
	0qdLoSLQBy8MjkMYyFGbQ1P/7V2zJ55DAgElWf6Ic08ysfODkNWkGlg2MCYDo8M=
X-Google-Smtp-Source: AGHT+IF5s2QS0SC9T4NK7zBGUumzdhPIfrwzNzThOmJjIaFabh5jMlPSAyxCsFGaIzzt+dgp1u7Jaw==
X-Received: by 2002:a05:6a21:199:b0:1a7:9e84:dc51 with SMTP id le25-20020a056a21019900b001a79e84dc51mr4682633pzb.7.1712673493530;
        Tue, 09 Apr 2024 07:38:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:1814:b0:6ed:24b2:634b with SMTP id
 y20-20020a056a00181400b006ed24b2634bls1992236pfa.0.-pod-prod-00-us; Tue, 09
 Apr 2024 07:38:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUQBj6qeSt3CRKNatryNwt12L5xhHa2IZOlFMcpFweqE03X1QtFXuhNjuRzxyUZ0NNztennUdAWYoBcWsyVW5OLOEpx+omu/nbz3U8h2LmVO+TrE+k=
X-Received: by 2002:a05:6a21:398a:b0:1a7:23ae:4421 with SMTP id ad10-20020a056a21398a00b001a723ae4421mr3788552pzc.24.1712673492104;
        Tue, 09 Apr 2024 07:38:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673492; cv=none;
        d=google.com; s=arc-20160816;
        b=K22kg70qOyClc3HV3lAdIEjjiwYg3LBBuu2uHxw0lkBvQzKp+J2M3zv+iJSIvPfvAP
         JJd0UWLQUBtkRTqG4xqKKQG4t6yVF64V4OkjadXE+2VntGMXgFK5Tfqta30yeM5OMPA2
         s8AlbdGmshk+dbiqNp6J29Mbg7sLqhoNEgnd/5NVq6fCWWhv5g0z4ta7B90hAUIUbpHv
         f+/ipxEyEDHXh9ZYcwFMeVPe9+3BIjByKDVrmIr4j49EuZmtI9BZmToUSzGD9OtzlA9I
         tHkHx6GimwTW6rTro/vs7Eo3a9o8OnqGxFsTgkbDpie4gcZZD1ZWQC61NtMxlHdbuTf8
         DdeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=X+gXVF78AgUh7bwzkprwZK7b92TFqgltEgDLxNaodqo=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=AK411VyjuyV0af++3EtBdytbv/TEPinvroqdw3+QMABOSSthX3iOcajCc63UDEOlar
         k2fAKxzkWW2J2g92mGoh43tO1miW8cH/jwW+/opyvLikbF/zqs+wlj83OXPp37P32Yoc
         82zrIw6Wd2dP1cnduGmjScZjGGhDHbNKwZ/d7c+l3f8wptLL7UIjl68y5xGKrD5dQrTv
         YqQt5c5cxOjQccbEBoCBwuvBryTS47tG9R7cYKgMcLqFD1eMr9OWtyoNqVQTkszFmud9
         gIx042TnlvmlEP5+bT4wg7Mv+qwR+0p+rQ51uV+TxGB9NtNcLmyv4NUycpJs1iDv3YMy
         wfbQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fLPg523d;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id b5-20020a63e705000000b005e2b1c99876si8711444pgi.336.2024.04.09.07.38.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:12 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCbn-00000002Ruc-1TRV;
	Tue, 09 Apr 2024 14:37:59 +0000
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
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] [PATCH 03/23] mpi3mr: pass queue_limits to bsg_setup_queue
Date: Tue,  9 Apr 2024 16:37:28 +0200
Message-Id: <20240409143748.980206-4-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=fLPg523d;
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

Pass the limits to bsg_setup_queue instead of setting them up on the live
queue.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: John Garry <john.g.garry@oracle.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 drivers/scsi/mpi3mr/mpi3mr_app.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/scsi/mpi3mr/mpi3mr_app.c b/drivers/scsi/mpi3mr/mpi3mr_app.c
index a45406fae2629b..3c309e8c3a2bc8 100644
--- a/drivers/scsi/mpi3mr/mpi3mr_app.c
+++ b/drivers/scsi/mpi3mr/mpi3mr_app.c
@@ -1845,6 +1845,10 @@ void mpi3mr_bsg_init(struct mpi3mr_ioc *mrioc)
 {
 	struct device *bsg_dev = &mrioc->bsg_dev;
 	struct device *parent = &mrioc->shost->shost_gendev;
+	struct queue_limits lim = {
+		.max_hw_sectors		= MPI3MR_MAX_APP_XFER_SECTORS,
+		.max_segments		= MPI3MR_MAX_APP_XFER_SEGMENTS,
+	};
 
 	device_initialize(bsg_dev);
 
@@ -1860,20 +1864,14 @@ void mpi3mr_bsg_init(struct mpi3mr_ioc *mrioc)
 		return;
 	}
 
-	mrioc->bsg_queue = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), NULL,
+	mrioc->bsg_queue = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), &lim,
 			mpi3mr_bsg_request, NULL, 0);
 	if (IS_ERR(mrioc->bsg_queue)) {
 		ioc_err(mrioc, "%s: bsg registration failed\n",
 		    dev_name(bsg_dev));
 		device_del(bsg_dev);
 		put_device(bsg_dev);
-		return;
 	}
-
-	blk_queue_max_segments(mrioc->bsg_queue, MPI3MR_MAX_APP_XFER_SEGMENTS);
-	blk_queue_max_hw_sectors(mrioc->bsg_queue, MPI3MR_MAX_APP_XFER_SECTORS);
-
-	return;
 }
 
 /**
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-4-hch%40lst.de.
