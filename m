Return-Path: <usb-storage+bncBDUNBGN3R4KRB2OQXDVQKGQEK6X6BQQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id B1444A6431
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 10:46:34 +0200 (CEST)
Received: by mail-pl1-x645.google.com with SMTP id b23sf9406837pls.8
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 01:46:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567500393; cv=pass;
        d=google.com; s=arc-20160816;
        b=Snz0fPJMZCdYe7Xlr53aprvJIjGuqSNB6apnh9a6zQMnnvbKW8kKClKkZ2GzP2CqiP
         ZrJ5b6uZ5o6r93b4E647QjpmYTvIwXtO98S21P0Kv4Cu2ClDQSoIfpRqNPNcwFWxEg8p
         ym7kjQAtx455wig2lu4RIuyLX/0WEY5YOYwK3sBMuToKV4COK90pWjlzvt4BUXDZcGiH
         TQMzo9fp0/nZ1qK2cMP24i1cyhOk7ZxUnvDI50OK1dAXKooUXVoGIG7Varz90+l+A78r
         pSnNJaJe7mWvBdkg8cDS+SyzEk4/0VYdWZnzIEFKrXFocZCMVRlJ9hrtYdVdhh/SMfBD
         PsuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tLTbeTaNfKAo2XMsZa6uRf7uWlupoQQsjJJv8ntz9J4=;
        b=XrofuomeNpvH4HtVeMzyC3ehLR8txEj+sIhNAUwWh8lg/5klLBW6egsgReAdnY2m2+
         +4GAcxxH6e4ZvGf4eQbK00TdrDpraa9ejj+jIZbDPGk75AsS4y1ZwA4DKOeb370AUheC
         NnD/YBu3kCm9izUmjPM5cLHJGPSwytJga5ZJwTVESfUfEN40m2RHMb+DXHrRp/Z5HqHI
         fYvM3tkLcjnlWdWbz4/7WiDKWbff2Qu7mFHGQkpQdyyb0vZjQKoB8EqxuCahJhS+zof6
         p96L+9n4tbBJ3tlkqxrfsVdfCugD+53p1Um45PxThU+N69csoNcuQPSSFhAHGqZ9WiDs
         uGFg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=LADrTaIL;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tLTbeTaNfKAo2XMsZa6uRf7uWlupoQQsjJJv8ntz9J4=;
        b=hNrvYTiTOXY8TgVhPJmKCcws0GQUwDXrM4whaPvae1mk/AaMmpUdlQ7LTAPe1wnKlR
         sNd/g6lSc0zieR/DZLyNv8aDJMEjUntDKXM8Z/L/JeMBx8pk4uEYF+p6WnUn2quGe4tb
         Q7Zeq9KOmFwPNgC2XRHjxdzUUqOTBfWMetSeM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tLTbeTaNfKAo2XMsZa6uRf7uWlupoQQsjJJv8ntz9J4=;
        b=Q+vxUTqngNrg4W/X7v5qpVhhoINbwpO6iEu/tPExIANCt/CFdQ/pMRpEl5/QZWowy1
         U/6Z1jdv6+hxsTyXePVNE02/SmBJlVD2u7jtpEn5w2jRsNrSKIjP3gu5j2kEi08e+2nU
         suM7RUPOlqnhmOBQBDbqqhwQnnKJ0rIea5Tw6+jqnfzZd2gpYUS+jlCzSxfNiP5vYBtz
         yFPUKs9/W3Xeo67tSHJPmNZo0WHc6XMKYPENPZvReIsupNeiNu/iG1TlGi4GBOZrgy/t
         vd9CbcFDM+ULkQBIsIqi8F1Gbs12Ib9fTKLGM1KM6akCFKeNPGCEG3wwhhLK0IB6MEJI
         BZaw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXnuKwJGSrga3fpWCfTGGVuzvWNs3UO6V8g51tJZR3XyDfAZpYa
	j1V5oQASJBerXwkhFQ8b2D+w/Q==
X-Google-Smtp-Source: APXvYqwQW8Uzpzk6cCMs1XhGFMBFfVXCaIthl1RQsBldiCy7pCKobLQsOIoIUnryZqAEwxmDN5FXMQ==
X-Received: by 2002:aa7:8c42:: with SMTP id e2mr23509000pfd.158.1567500393342;
        Tue, 03 Sep 2019 01:46:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:53c2:: with SMTP id h185ls5589759pfb.1.gmail; Tue, 03
 Sep 2019 01:46:32 -0700 (PDT)
X-Received: by 2002:a62:5f83:: with SMTP id t125mr10156864pfb.125.1567500392818;
        Tue, 03 Sep 2019 01:46:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567500392; cv=none;
        d=google.com; s=arc-20160816;
        b=rOwrAIVIvhCMfOtarz5Lrg1sTLH0fq1Tbu5WjlU6xHvPWhouLivcwNhpAOLUwcIsST
         SOVJv2BuIow7TFxqUuJ0hwvP5OmsURflWCiZkBwgBEfjWs/QFhoT2O0XEc3Dr7A6sJ2g
         5KCOGkxfPzUBxmOyTpJq/HjA2s5tce3RBgZgn8y3hI+DGoxC4TtKPiRC3CjddlhQ0tuJ
         EiGVx+jEf5qt9wY2t43eRAG7yL0AjuSmJNxhGfnAwHancOPHWvxCnEmGWrycqfYqTAQ+
         MLe4dDwPzE1wZz9aNAKQEMIgyMvcvRzek7j9NmzQD/GzvR0uYffsB8Dc9GfZHvBksuIz
         niBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=S41OOqXxO8zPAzI3PpNlItfxZvwx3OC+HSMNXC+BXd4=;
        b=lGoMB0HUM5DtXVip1ll3dJoQ6mJeiMphLe5hz6erlCNvVDto9/R/4NkomlS1wzr5Pf
         gK3DO10ZeJP03d5+hOsAY0Ddp+3N538GkZbhfu9EEqLur1YYMXIo4xdpaSVUw30FrpEH
         V/TzAkRb6mN6rXeWlUJSAwmN9fXiaTZhkRYa1JQDg15Z8/thlnOlBz3I0O64N2fUuhc4
         I1zyc1yvEssrgXGtApveE8/3tdworTWY+dnmSOqQxWWp7lhH6wNmvaTBiFF9Pzpt/Vo2
         My26/CUq/PwAHdOUJNcP3yq0iTjQnvmxesitY5bkqERqCZOrZHZifFcwDoe8brr/KPRr
         JBDg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=LADrTaIL;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id be12si14173291plb.307.2019.09.03.01.46.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2019 01:46:32 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1i54SM-0003sq-2e; Tue, 03 Sep 2019 08:46:30 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Lee Jones <lee.jones@linaro.org>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 5/6] usb: remove commented out dma wrappers
Date: Tue,  3 Sep 2019 10:46:14 +0200
Message-Id: <20190903084615.19161-6-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903084615.19161-1-hch@lst.de>
References: <20190903084615.19161-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=LADrTaIL;
       spf=pass (google.com: best guess record for domain of
 batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
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

These wrappers have never seen use and have been commented out
for a long time.  Remove them for good.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/usb/core/usb.c | 222 -----------------------------------------
 1 file changed, 222 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 0ab8738047da..f16c26dc079d 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -933,228 +933,6 @@ void usb_free_coherent(struct usb_device *dev, size_t size, void *addr,
 }
 EXPORT_SYMBOL_GPL(usb_free_coherent);
 
-/**
- * usb_buffer_map - create DMA mapping(s) for an urb
- * @urb: urb whose transfer_buffer/setup_packet will be mapped
- *
- * URB_NO_TRANSFER_DMA_MAP is added to urb->transfer_flags if the operation
- * succeeds. If the device is connected to this system through a non-DMA
- * controller, this operation always succeeds.
- *
- * This call would normally be used for an urb which is reused, perhaps
- * as the target of a large periodic transfer, with usb_buffer_dmasync()
- * calls to synchronize memory and dma state.
- *
- * Reverse the effect of this call with usb_buffer_unmap().
- *
- * Return: Either %NULL (indicating no buffer could be mapped), or @urb.
- *
- */
-#if 0
-struct urb *usb_buffer_map(struct urb *urb)
-{
-	struct usb_bus		*bus;
-	struct device		*controller;
-
-	if (!urb
-			|| !urb->dev
-			|| !(bus = urb->dev->bus)
-			|| !(controller = bus->sysdev))
-		return NULL;
-
-	if (controller->dma_mask) {
-		urb->transfer_dma = dma_map_single(controller,
-			urb->transfer_buffer, urb->transfer_buffer_length,
-			usb_pipein(urb->pipe)
-				? DMA_FROM_DEVICE : DMA_TO_DEVICE);
-	/* FIXME generic api broken like pci, can't report errors */
-	/* if (urb->transfer_dma == DMA_ADDR_INVALID) return 0; */
-	} else
-		urb->transfer_dma = ~0;
-	urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
-	return urb;
-}
-EXPORT_SYMBOL_GPL(usb_buffer_map);
-#endif  /*  0  */
-
-/* XXX DISABLED, no users currently.  If you wish to re-enable this
- * XXX please determine whether the sync is to transfer ownership of
- * XXX the buffer from device to cpu or vice verse, and thusly use the
- * XXX appropriate _for_{cpu,device}() method.  -DaveM
- */
-#if 0
-
-/**
- * usb_buffer_dmasync - synchronize DMA and CPU view of buffer(s)
- * @urb: urb whose transfer_buffer/setup_packet will be synchronized
- */
-void usb_buffer_dmasync(struct urb *urb)
-{
-	struct usb_bus		*bus;
-	struct device		*controller;
-
-	if (!urb
-			|| !(urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP)
-			|| !urb->dev
-			|| !(bus = urb->dev->bus)
-			|| !(controller = bus->sysdev))
-		return;
-
-	if (controller->dma_mask) {
-		dma_sync_single_for_cpu(controller,
-			urb->transfer_dma, urb->transfer_buffer_length,
-			usb_pipein(urb->pipe)
-				? DMA_FROM_DEVICE : DMA_TO_DEVICE);
-		if (usb_pipecontrol(urb->pipe))
-			dma_sync_single_for_cpu(controller,
-					urb->setup_dma,
-					sizeof(struct usb_ctrlrequest),
-					DMA_TO_DEVICE);
-	}
-}
-EXPORT_SYMBOL_GPL(usb_buffer_dmasync);
-#endif
-
-/**
- * usb_buffer_unmap - free DMA mapping(s) for an urb
- * @urb: urb whose transfer_buffer will be unmapped
- *
- * Reverses the effect of usb_buffer_map().
- */
-#if 0
-void usb_buffer_unmap(struct urb *urb)
-{
-	struct usb_bus		*bus;
-	struct device		*controller;
-
-	if (!urb
-			|| !(urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP)
-			|| !urb->dev
-			|| !(bus = urb->dev->bus)
-			|| !(controller = bus->sysdev))
-		return;
-
-	if (controller->dma_mask) {
-		dma_unmap_single(controller,
-			urb->transfer_dma, urb->transfer_buffer_length,
-			usb_pipein(urb->pipe)
-				? DMA_FROM_DEVICE : DMA_TO_DEVICE);
-	}
-	urb->transfer_flags &= ~URB_NO_TRANSFER_DMA_MAP;
-}
-EXPORT_SYMBOL_GPL(usb_buffer_unmap);
-#endif  /*  0  */
-
-#if 0
-/**
- * usb_buffer_map_sg - create scatterlist DMA mapping(s) for an endpoint
- * @dev: device to which the scatterlist will be mapped
- * @is_in: mapping transfer direction
- * @sg: the scatterlist to map
- * @nents: the number of entries in the scatterlist
- *
- * Return: Either < 0 (indicating no buffers could be mapped), or the
- * number of DMA mapping array entries in the scatterlist.
- *
- * Note:
- * The caller is responsible for placing the resulting DMA addresses from
- * the scatterlist into URB transfer buffer pointers, and for setting the
- * URB_NO_TRANSFER_DMA_MAP transfer flag in each of those URBs.
- *
- * Top I/O rates come from queuing URBs, instead of waiting for each one
- * to complete before starting the next I/O.   This is particularly easy
- * to do with scatterlists.  Just allocate and submit one URB for each DMA
- * mapping entry returned, stopping on the first error or when all succeed.
- * Better yet, use the usb_sg_*() calls, which do that (and more) for you.
- *
- * This call would normally be used when translating scatterlist requests,
- * rather than usb_buffer_map(), since on some hardware (with IOMMUs) it
- * may be able to coalesce mappings for improved I/O efficiency.
- *
- * Reverse the effect of this call with usb_buffer_unmap_sg().
- */
-int usb_buffer_map_sg(const struct usb_device *dev, int is_in,
-		      struct scatterlist *sg, int nents)
-{
-	struct usb_bus		*bus;
-	struct device		*controller;
-
-	if (!dev
-			|| !(bus = dev->bus)
-			|| !(controller = bus->sysdev)
-			|| !controller->dma_mask)
-		return -EINVAL;
-
-	/* FIXME generic api broken like pci, can't report errors */
-	return dma_map_sg(controller, sg, nents,
-			is_in ? DMA_FROM_DEVICE : DMA_TO_DEVICE) ? : -ENOMEM;
-}
-EXPORT_SYMBOL_GPL(usb_buffer_map_sg);
-#endif
-
-/* XXX DISABLED, no users currently.  If you wish to re-enable this
- * XXX please determine whether the sync is to transfer ownership of
- * XXX the buffer from device to cpu or vice verse, and thusly use the
- * XXX appropriate _for_{cpu,device}() method.  -DaveM
- */
-#if 0
-
-/**
- * usb_buffer_dmasync_sg - synchronize DMA and CPU view of scatterlist buffer(s)
- * @dev: device to which the scatterlist will be mapped
- * @is_in: mapping transfer direction
- * @sg: the scatterlist to synchronize
- * @n_hw_ents: the positive return value from usb_buffer_map_sg
- *
- * Use this when you are re-using a scatterlist's data buffers for
- * another USB request.
- */
-void usb_buffer_dmasync_sg(const struct usb_device *dev, int is_in,
-			   struct scatterlist *sg, int n_hw_ents)
-{
-	struct usb_bus		*bus;
-	struct device		*controller;
-
-	if (!dev
-			|| !(bus = dev->bus)
-			|| !(controller = bus->sysdev)
-			|| !controller->dma_mask)
-		return;
-
-	dma_sync_sg_for_cpu(controller, sg, n_hw_ents,
-			    is_in ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
-}
-EXPORT_SYMBOL_GPL(usb_buffer_dmasync_sg);
-#endif
-
-#if 0
-/**
- * usb_buffer_unmap_sg - free DMA mapping(s) for a scatterlist
- * @dev: device to which the scatterlist will be mapped
- * @is_in: mapping transfer direction
- * @sg: the scatterlist to unmap
- * @n_hw_ents: the positive return value from usb_buffer_map_sg
- *
- * Reverses the effect of usb_buffer_map_sg().
- */
-void usb_buffer_unmap_sg(const struct usb_device *dev, int is_in,
-			 struct scatterlist *sg, int n_hw_ents)
-{
-	struct usb_bus		*bus;
-	struct device		*controller;
-
-	if (!dev
-			|| !(bus = dev->bus)
-			|| !(controller = bus->sysdev)
-			|| !controller->dma_mask)
-		return;
-
-	dma_unmap_sg(controller, sg, n_hw_ents,
-			is_in ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
-}
-EXPORT_SYMBOL_GPL(usb_buffer_unmap_sg);
-#endif
-
 /*
  * Notifications of device and interface registration
  */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903084615.19161-6-hch%40lst.de.
