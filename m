Return-Path: <usb-storage+bncBDUNBGN3R4KRBT7F4HAAMGQE2ET4BQI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF8FAA8DE7
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 10:12:00 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-2242f3fd213sf38226145ad.1
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 01:12:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746432719; cv=pass;
        d=google.com; s=arc-20240605;
        b=OYqIBEIxvzlDv3q614gkdzalxBi5V0bi9Bn6Xgg0OvVRbAmrfnv3ckuqkOgg581I2B
         vkNiSAYuDi0P/8WWZUCPo3HAOM3pk2DWtasMfA5tFFbL2wqnJLeU/Yrzw0RAl4iH+Axl
         qvqt4LGvWfr36egUJKje3ELSekZ+7WjvNbt79RF+rEx/EcN57kjGRtaE3cua8uRxqz8k
         bJdd/HwtbSqpEPKihY1Ewlc9ov0BYKTMYFYz88FaI2zzG+/5s0we0W47JOWfHdBNsUMe
         blA/e/sUNfKYzVOZcZlrdT5B27VUunzY7S2R+Ln3iuhqn+ZbCJlEjqHr9jPPZvFf493u
         S6qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ESqnHFqDgetmNCSOIRlXouzDieFvFrOCrVxfm8cvX1A=;
        fh=tZdKlgG+Ii5odexwUGCju9X8r9AZqkpGggKY0WqgJfM=;
        b=N5lrsTtkIFRYcnCOYdGduEAn2tysQTw0H/DAmRXd74eBtDW5hGncMaOE3XKJwBykyd
         rg6/o6+RU2qtxvs0I+qYREsTmWaStcj30m+6/fRc2hg8mUxheDIp/tlUzzhbpl6R4JaU
         Hto4EGPSp1V81KAVSTe2cLKYJkFgh0tz3AKkhddlN3WEtzZIUgebLXCRDl7bW2KAspoe
         HI0LvOEz2XseG9aUyg3xyV7gTl5+48eQeV4E7HCjrT6gN7LBtZHKZ6lp8hCmyf2bXFFF
         fp5Lj9C5MgqDfGl8atY3qne1HusJTcDhL/qg92LvexSzB2mRX4Ypp9OFXJGrw2CdYoOl
         lQBg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=Wclypl2x;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746432719; x=1747037519; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ESqnHFqDgetmNCSOIRlXouzDieFvFrOCrVxfm8cvX1A=;
        b=VfOFcRGnRLbqGrYQpkdAPW7Hp2qf/Z/WbwgNSMN7H2q90uXNa27W45zFdN2+X25uSA
         qbqg9i06mPAP065MLopCNXo7yqRB0G7kkwmMLrP6DLcNCQ6OdTnePdD/zWVNv52lihTW
         yq31xL98HwJUl53OyUvVHVoZPGVXwD6EB6LiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746432719; x=1747037519;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ESqnHFqDgetmNCSOIRlXouzDieFvFrOCrVxfm8cvX1A=;
        b=vAsQR9O78DfyetBEYqQO9yWkPubZoUl9Pb3NoIeCgHKUf9ikPZ/vM45lAN4kEszFWn
         b32r6tVoKqhYUBYclHLJMiyfasKzGv5GBKb2NfYztbUXZxNGulc9JHEzqEfIWg+U+qNM
         0+InAaZXP5o0HSWvqa4qyzW+Z4c+UTyJPCqhpep0pSleabjCLcFqvUrU3AM3DssalGW3
         TanS7/G0/Whz6MD4HlCiURCqNQmzjyNiWW41tEVpuxvt8jIBtChkTXZX3mGIFzTiEU8u
         MLBSQOMOlku2RZ8pjesRb38dHLlzsByVudKsT4so6I0lM05haGNzvYKwBnHxuwFMapfa
         uBXA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXT9oVOvMocnJ8yUC2bDtnMU5IaTCOJvDGGCyHnc+Q7mNy54QmKjblYcfxscAstIfogorVcZw==@lfdr.de
X-Gm-Message-State: AOJu0Yz6KTxBQBQxl+NvXiq+3XXGVOzHGsW/l9zqDcnvdBhY/TkHWLr8
	5sX8KjlEu7sRY+wgh4QNVb70/UzjMCJj5YPPxhthBc75cDT83M2pTq1jBnOMAZ0=
X-Google-Smtp-Source: AGHT+IHdYUv5JhavJsDlDLssrQkngHXAfVv8CRQYNwNQpdr56cf/xn53xwWo9udMrkr7T7cnsiEU5w==
X-Received: by 2002:a17:902:d48b:b0:224:18bb:44c2 with SMTP id d9443c01a7336-22e1e8c1be4mr76648385ad.6.1746432719414;
        Mon, 05 May 2025 01:11:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBE96e+wjq4cn+OlC5j0Vu7Kc4Lq9+s1+pCqjN187wXgLA==
Received: by 2002:a17:902:db10:b0:21f:101b:4467 with SMTP id
 d9443c01a7336-22e02fd7eacls37057105ad.1.-pod-prod-05-us; Mon, 05 May 2025
 01:11:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX7qBFtvjwmnxMyKDGjy02i0e35i7kdGAOid3Zua7IDawi04xW8xn0UUysFE27Jz8wFwsivjq9RINowlw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:2f07:b0:21f:45d:21fb with SMTP id d9443c01a7336-22e1e8c1dcemr90366535ad.3.1746432717990;
        Mon, 05 May 2025 01:11:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746432717; cv=none;
        d=google.com; s=arc-20240605;
        b=idqGWld12lPnGyY0rLs4ekDKqTu/pGk1IIhsmpEz+pjj3EcWyxo6LdF5+iBK7S6LIv
         R0z4qp36DT5S22Dp8u4TeZa5tDLzlgbPc+yyAyi3mFQIE+Gfjf3aCAnLaaV/RDhPkpJw
         r5X/GB+yNAQzkBihSnXfdNyYXDjr4QOLZ2h6vTDPQMeX82XYtLYTZFMfE12E0JSBcald
         EK4IdiDFQEpxdEraebxDPiwtW74vE+T+oKlaFI6Wd9hGx6RNacAakG8d2KFco2xn0Epi
         m3wqMkp5W6pb1LRLZFhSyV7N7I+nNCEVn8ODYdzcnP5XfXuTGupaKCz8M8ih9DWIlwaL
         XfDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fy4oUQbvotJqjCLTSC+IbEg5Wy6muP8u9pnymtyKRSA=;
        fh=WmeLGcEp+GIvplLg3dvP+X2BYz1SyY/wlvtv2tI8E8I=;
        b=SYd9PYgwDLkWa2q9FIfVTWKmbpA7dT8Bnz8e6SIl3pe5R+HxKuqPTbTEkRpdiKkSqz
         RLT148deAoc2svzAxN5GePCbe/GdiyVePGJHMM9G52CWIZVgJ2i7R0kaeNeoUIPqVTf9
         HYSGams0MPBKxTgk8PaLoBM3oo3ExR3JTt2PKQVFowB7rRt+veMWqUL6j0WPTpJ8sYNo
         qH4F3YfXD8sKIiZAqOq0Lr2/O0PiKTfPpDGpey0jjSOA4nX1i5Iouk68Ew68syDt0wq0
         /Lx6wgLbyFR8h7cyupVCHaomHe7OYlJ/hNspKdZWyzjWxUX69RytD2sSgn4oAnfwer+n
         Ecow==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=Wclypl2x;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-22e15227223si96669975ad.387.2025.05.05.01.11.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 01:11:57 -0700 (PDT)
Received-SPF: none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-f2ef-69c9-6274-23a2.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:f2ef:69c9:6274:23a2] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqvb-00000006kWe-0w2h;
	Mon, 05 May 2025 08:11:55 +0000
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
	linux-mm@kvack.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] [PATCH 4/7] usb-storage: reject probe of device one
 non-DMA HCDs when using highmem
Date: Mon,  5 May 2025 10:11:23 +0200
Message-ID: <20250505081138.3435992-5-hch@lst.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250505081138.3435992-1-hch@lst.de>
References: <20250505081138.3435992-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=Wclypl2x;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
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
Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 drivers/usb/storage/usb.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index d36f3b6992bb..152ee3376550 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -1056,13 +1056,20 @@ int usb_stor_probe1(struct us_data **pus,
 		goto BadDevice;
 
 	/*
-	 * Some USB host controllers can't do DMA; they have to use PIO.
-	 * For such controllers we need to make sure the block layer sets
-	 * up bounce buffers in addressable memory.
+	 * Some USB host controllers can't do DMA: They have to use PIO, or they
+	 * have to use a small dedicated local memory area, or they have other
+	 * restrictions on addressable memory.
+	 *
+	 * We can't support these controllers on highmem systems as we don't
+	 * kmap or bounce buffer.
 	 */
-	if (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
-	    bus_to_hcd(us->pusb_dev->bus)->localmem_pool)
-		host->no_highmem = true;
+	if (IS_ENABLED(CONFIG_HIGHMEM) &&
+	    (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
+	     bus_to_hcd(us->pusb_dev->bus)->localmem_pool)) {
+		dev_warn(&intf->dev, "USB Mass Storage not supported on this host controller\n");
+		result = -EINVAL;
+		goto release;
+	}
 
 	/* Get the unusual_devs entries and the descriptors */
 	result = get_device_info(us, id, unusual_dev);
@@ -1081,6 +1088,7 @@ int usb_stor_probe1(struct us_data **pus,
 
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250505081138.3435992-5-hch%40lst.de.
