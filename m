Return-Path: <usb-storage+bncBDUNBGN3R4KRB3X2QKYAMGQECK4ZRCA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 9418B8882B2
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:55:28 +0100 (CET)
Received: by mail-ot1-x348.google.com with SMTP id 46e09a7af769-6e6cb8055b8sf274176a34.1
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:55:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324527; cv=pass;
        d=google.com; s=arc-20160816;
        b=U5THCcxO4U94ou2DP1XcyOP1LZO+tHfstMzWWTmsm9XOP30wsXpoV1tAXZ/kOKUq8v
         Ctx7q6701EoafO1vSbxnf0VOiXz7ayQWE/056MGC6rFd3G2C8cNsCyJGfH5F4lBKXNaS
         Li43bn11HwufXWfktCYtOR3PuaVEP46BU4/2MODbPKc6b8fWYaEJ3gpyIDznxOHK/Dyx
         3WqS9mimcXx7bBNswOE41lbYT3peOpythBeZ2qTrLTj8WbeKiPKcnCdI38OoS2QmF1Y5
         vku+C/YC7YjH7qZhMoWEIwdjQCebGHBpzN1z41aI1FHeBFPSkCHEDJ3piyEZbzxcFCkB
         RXAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2WJkpulrHBP2EgEAskEU6AMbtxlAR5D9rnDpraxDGOI=;
        fh=97Co1YB8WZvNG4g6WncZExPQiCjlbe0mzHOBquIxLSU=;
        b=fz5GmZruafj3ZTz3ly/M+lWzXPf/0lGJBJKioZxH22lC8Ri7ez6yxPuV8e6yFCOQd8
         OOdw2opqUGC1jJotsf8GrElowc2bkZo/FuaR8WiW90+Rg3H4l3BJIBgxZogV6iStdnUZ
         yKfW+OpUC1/nK5vHtyq9xfM7MOVjiT8pIDCQJNagEX50rvn9/L5CuHxlMeWD7tsFdNle
         xi1qunw9/oVdx2kHxGlDigHNOPs3iQD8HQrNbfZyrjrvBX6XHAo6kL2SjpGqCtvjuf6t
         ehhtyNa8+wQjH31wpbtyxbPJzaisFSrN3Pf+saiw5MLKM+H/nPvjtT61tfDza9L9Qv0Q
         HBeg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=NYsH+jPH;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324527; x=1711929327; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2WJkpulrHBP2EgEAskEU6AMbtxlAR5D9rnDpraxDGOI=;
        b=C3ZT+Pm2pP0XdXgODjSOWtAHjApNj8jh3SoJX6G0ATJYQFXLg3gTzVq/Je4Vjkfox6
         pFTGZmqwUxhgsKCc/ckmTzWwYaTIBXgYmxo/2iIrherNfc/uo6NRSrTeAce70ZIe3sZx
         ujjM67xTSJd1MfxLRfP4CZbmPZ8Bh9mOu+Lq4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324527; x=1711929327;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2WJkpulrHBP2EgEAskEU6AMbtxlAR5D9rnDpraxDGOI=;
        b=EVV2bGBzNjpvdPoQ36xDEnui/9XAiLJNgJtotOK2s7X2yEUaiM0ddJD7OEKOyNwrBS
         w2UvKkjTG7H95jcWG44nNV31SPSxIR1FjPdOyW/bY9tj4777ULJDkbOYyQgIVLsFYzMS
         EUUMGUU47XG9jv4G8k7beu0ucCY50pFKeqdWqiXUR6NRY3XLjQ2mxw3dy9ywf+zeUAQX
         nSqnfMvlQzD1kr2gmpn/UIyX1i6n8LXsneIf9SX3ItDMUM9yyXESHg5tgBbbcOSZWrGv
         BwRVky2FwzDk4ExRUdMx7m0vt9rXeUHY2sHzrdsZHjB4vreJpGPXiAvGustTi0MRY94D
         k7zg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXMGxeIdGjRS8UaSP6yLBNmGWALa2SiTYOa/ZMMRRlGmIoDB20hDjr63MhvcObP+TocLRh4hyZHzoQbNQxBrEH1kiskxxuxLCVM
X-Gm-Message-State: AOJu0Yy4yHiHLGRyCyjIZafbk3aV3+3Dx5zFdHDh/A4sqrTybrcH/9uO
	FKPIrp3+DK68LDXMk/EM5jc8UhJaGN1rO5iN7nTC8e5x1VBgQPZctr9gvCjiKto=
X-Google-Smtp-Source: AGHT+IFGKsvxD5Z37mTTwIxOuUlezZ5eHE0CUmOLP2chEUo91jrD94a39kclS1iUekbd4dFfxFPZyg==
X-Received: by 2002:a4a:6c19:0:b0:5a4:7790:61b4 with SMTP id q25-20020a4a6c19000000b005a4779061b4mr4165053ooc.0.1711324526929;
        Sun, 24 Mar 2024 16:55:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:1c14:b0:5a4:5c82:a148 with SMTP id
 cl20-20020a0568201c1400b005a45c82a148ls3604207oob.0.-pod-prod-01-us; Sun, 24
 Mar 2024 16:55:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVWwnEBTmSilw8SJsm2fWUwenVHhaLjkkaNp+ObpyGCrXzrzYbvylO8Ur0ueevczWRxDHY3S/rCkmqwbhetGtlapm6fWxTq9gNix/lqtteIOZKDkyM=
X-Received: by 2002:a9d:7398:0:b0:6e6:ca3a:99fb with SMTP id j24-20020a9d7398000000b006e6ca3a99fbmr5354154otk.13.1711324525894;
        Sun, 24 Mar 2024 16:55:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324525; cv=none;
        d=google.com; s=arc-20160816;
        b=Ld3nEFl+covcxITEscuxlQU+Duh/otINaw9p+ydXO35JUH7MJRZGxWnOcRQXQ8QBQD
         U6PrxeVNYhaibsxeqvOhP9IeMHSC+DkR2LD3IvZzhm+SECxVyKGOxtmknH2gg0uvzGXX
         LufV94rkabNNcKCHISpx5nz891i5mNOoX1Ejjjl9nAp1tMZQ5V10kzJaO2zZoEvivEyL
         0E/2MB0EuRhry89rRXv6hr9wLHitr7CbYaetEUArja6yAf1AdL3qsjra5D1bZ/c/C08N
         O1HHKZJZYF9PdGjMg/rBEBgxfot2TJYd9UnuIpM3hUlrPt4u+Z7BnO+auJg48okRNwuc
         KVAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Oi3gXJaYMU3a5CWeWFZBGsi5hiMd7VrWMH8aWRvFEBc=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=bcfkQEaCOmAFRweh770aR6uTPtun3DMnNddrMIY/kXkub3N3pQDq8R0D1GjNMEhfud
         h/bx7qpZL9JtlhbXbJ/7DTv1UeYq8+HfE8CRPV+KDQI8lK74kVKShMeisaI5gIBW60be
         rris2D/T6TYHNDfSt7nssuBp8VRD6P/7DB18vGd+w8GYonS+e1LDHbWCZkzvT6IR/dvg
         2uVCszgNSqyNnrfUbYzrsFiOeLw/MjP9CcpwxZKzsDHTnTxk9C5Guvr4keIJXgisjPuu
         AYQhD7frM4ANaMQEeSa07+q9PyGgBkbaKi/ipv3lICUIRO9WPVsuUmtbpjOVqXH2HKS0
         oYlg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=NYsH+jPH;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id z12-20020a63e10c000000b005cdc2cc9a1dsi6632479pgh.699.2024.03.24.16.55.25
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:25 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXfy-0000000DzKg-2IVj;
	Sun, 24 Mar 2024 23:54:55 +0000
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
Subject: [usb-storage] [PATCH 01/23] block: don't reject too large
 max_user_setors in blk_validate_limits
Date: Mon, 25 Mar 2024 07:54:26 +0800
Message-Id: <20240324235448.2039074-2-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=NYsH+jPH;
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

We already cap down the actual max_sectors to the max of the hardware
and user limit, so don't reject the configuration.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/blk-settings.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/block/blk-settings.c b/block/blk-settings.c
index 3c7d8d638ab59d..cdbaef159c4bc3 100644
--- a/block/blk-settings.c
+++ b/block/blk-settings.c
@@ -146,8 +146,7 @@ static int blk_validate_limits(struct queue_limits *lim)
 	max_hw_sectors = min_not_zero(lim->max_hw_sectors,
 				lim->max_dev_sectors);
 	if (lim->max_user_sectors) {
-		if (lim->max_user_sectors > max_hw_sectors ||
-		    lim->max_user_sectors < PAGE_SIZE / SECTOR_SIZE)
+		if (lim->max_user_sectors < PAGE_SIZE / SECTOR_SIZE)
 			return -EINVAL;
 		lim->max_sectors = min(max_hw_sectors, lim->max_user_sectors);
 	} else {
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-2-hch%40lst.de.
