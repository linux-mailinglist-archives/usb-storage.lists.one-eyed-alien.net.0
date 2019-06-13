Return-Path: <usb-storage+bncBD6LRVPZ6YGRBIMFRLUAKGQEZWF67TI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E2D44800
	for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 19:06:42 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id s9sf18004407qtn.14
        for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 10:06:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560445601; cv=pass;
        d=google.com; s=arc-20160816;
        b=sC7mXmHsWPrC7H+x6grOYQ1dYFTkHl9eKhSHsSgXqXrRksTxi84mboh4GZL7uunqb7
         K4CfEgZWNYjRJoZpYv8M9krnwHC6tHKqKlQfoiXohXUrXsdQvN0jomq8bJ51nskrHpUg
         kXIvsw2AWzdiUOBGnrpLdnNFSqgRrA6wMPUn6s7DS3y1nXMayUBl4z+WkPtJvg2r2Y9Z
         b6HvoIxdoycCLd1d20H97lcG1F0Op/OowNXHB0cNrVr560j5XSZyrXkImV61cgsTYQNz
         M/o79u+MqosidsK5Taqj5OO4E0oSMTfyIPJtr9cGr1TsbE1tni/KOpQxXRVhiWS7x0DF
         qhxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=XndlA1K98XrkG7fNMKfEaNuqItAV2y4SPTM4zsIodQA=;
        b=hvuzJkuA1Q2zZOedxlzLdnSA/ShJ7I6PAraUz0ejgRjltGgch7tht5AdqdTeNv2tMf
         qPdOHrvjtM/DAVzNF234IbAiRZTn6nzBS/AwWpEVyfevroW1PuJsvI0dp3BIN6OlvNJ8
         RUWBzUCDeec8JYjlb81khjXYql+Ba9Wt0Pph+UBXpoVmKUCkU/dqX+SUIcy5CZ6WI/zH
         rZiH16h/C0nb7P7rg43b7+M9zWBjOyEJNADZR0WjvSOmCx9vYoF41l8UgQfyr5/UH4iJ
         sn0X2YTNr07bK4CRTuzXkJi1pDANwcH0jdHDNL6HVMjdoMu6t3GJgnjN6zsN8CMjKSdI
         L0Ww==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XndlA1K98XrkG7fNMKfEaNuqItAV2y4SPTM4zsIodQA=;
        b=ATXiGlD1QWImYGvsPu4TD8cxXONIyuuQd2SWsO/CUdAvSR4IEfHOAwzy+JHWW5+HUh
         QB45pFr2zbC8sfk/rEJfvkIkSKVaibz4Lm08ESLAg1Mci6Zv227yWy0N4mKF6Z27enaz
         kRJybSBgRiZUnlij+TAAjkKIqZSsapk569Fv4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XndlA1K98XrkG7fNMKfEaNuqItAV2y4SPTM4zsIodQA=;
        b=DHwxRmzhu8pnjvsOHVAIFokWYeSF4ttnp1W8T0b0DagU3moyoKC/MByPLxp6ScvVF4
         J2+sJUZTyJyNNTW5fIhUtBBYoxGR8ZY0rDz51jRsRol5iZaNQw9NHwhhjP8BE5hKqDOH
         u0TJCAyspifLhQVCEbnTj87lOsj0kRyYs+kWfw+H+LIhG+zznGhKMXvheN1O3Vs0JTSd
         EcEzhbNGG9MNjEYHvj2Q8GbY5LkJnfOiK5L0YCV8pGJOCOG55RWgJxp6trq25o5xZhS7
         5bpTUYrcz4GHB5FfbIwJyipVZvYJp1I8HwdMEpKfYn8EouG83bbula0Y7RBkWcgT1U3y
         s/VA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVgGwNRA8USZCzctc/Xm3ywhGHYvW3UZlBYPEgaFR3jCd66DaZH
	VPkcnGYF0kFyMrG7CQCFqC/NSw==
X-Google-Smtp-Source: APXvYqwAmAIfliNwgQh+Dngh8HG/S22dAiD+isARCcQcWMXM7/+0Ts+oskzf3iLU6gpixPqCtgQuSA==
X-Received: by 2002:a37:4cd2:: with SMTP id z201mr25044264qka.284.1560445601322;
        Thu, 13 Jun 2019 10:06:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:7609:: with SMTP id t9ls1671592qtq.0.gmail; Thu, 13 Jun
 2019 10:06:40 -0700 (PDT)
X-Received: by 2002:aed:21f0:: with SMTP id m45mr62632023qtc.391.1560445600879;
        Thu, 13 Jun 2019 10:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560445600; cv=none;
        d=google.com; s=arc-20160816;
        b=wmwTYdLX8kYWlZSGTrZr/pTj+5LAOsh9mBxnM2pVRM/KpZBW5rI40tUaz1IWQF0xb8
         Ttq1KQqK6+akospnVovCvT0fdV4yxbnD8hbM0q0RVF+TZ7TxDzwVj7tCBC/WTL5MckDv
         B4SoN8z0OX67wc05566tbO52AJQHOdK+P1uBeWT6/PCDAxYTAUwA5Aw5n2fd/nH59oO2
         jKQ5E0CzQRv6DYWoBVBjYn2wTG3YFtle9P4xp+jApew4qrKuVQLdiIdCwAGMfNj4C01u
         USWCi+SonOcr4T/z1mV2dXODS96cBwDDJBETR4PYZckLh7CraN1nPQuRycxFTJXwxgN+
         pPOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=XndlA1K98XrkG7fNMKfEaNuqItAV2y4SPTM4zsIodQA=;
        b=XeBEALTrdtBEJvqH70h3wGixoIw9XrjG+dlrTrYxFeui3qnOeVwSAwHkhwVmLvDL06
         DFJLNDebmlh2UvMDuchdIWQxH+uRBjE04A99ZwG6OFfInNM7DJVGKQJJfkv7NgAXWm/5
         XgtS7G2WoHeeIXpue8DgLqYO+o5OKJ3ThgFkvfx1qXkkQuVFQ4glyhGIIErwugq+2umg
         ULVCXMjUJVimn6+GqcaQmhfPnCIlzT5sNvUFlnF0TtRO0mJvs/2DJpbP/KwiNy/muDJX
         8mNKPHrfxdVZ7JFbBL79B5kXoCAxJtFiMn3bhNFNwDeEhVoPQqnmrVDC0zosL1zptvfG
         BcEA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id f124si179943qkd.250.2019.06.13.10.06.40
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 13 Jun 2019 10:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 4155 invoked by uid 2102); 13 Jun 2019 13:06:40 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 13 Jun 2019 13:06:40 -0400
Date: Thu, 13 Jun 2019 13:06:40 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
cc: gregkh@linuxfoundation.org,  <hch@lst.de>,  <linux-usb@vger.kernel.org>, 
     <usb-storage@lists.one-eyed-alien.net>, 
     <linux-renesas-soc@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH v2] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
In-Reply-To: <1560418611-10239-1-git-send-email-yoshihiro.shimoda.uh@renesas.com>
Message-ID: <Pine.LNX.4.44L0.1906131258310.1307-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
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

On Thu, 13 Jun 2019, Yoshihiro Shimoda wrote:

> This patch fixes an issue that the following error happens on
> swiotlb environment:
> 
> 	xhci-hcd ee000000.usb: swiotlb buffer is full (sz: 524288 bytes), total 32768 (slots), used 1338 (slots)
> 
> On the kernel v5.1, block settings of a usb-storage with SuperSpeed
> were the following so that the block layer will allocate buffers
> up to 64 KiB, and then the issue didn't happen.
> 
> 	max_segment_size = 65536
> 	max_hw_sectors_kb = 1024
> 
> After the commit 09324d32d2a0 ("block: force an unlimited segment
> size on queues with a virt boundary") is applied, the block settings
> are the following. So, the block layer will allocate buffers up to
> 1024 KiB, and then the issue happens:
> 
> 	max_segment_size = 4294967295
> 	max_hw_sectors_kb = 1024
> 
> To fix the issue, the usb-storage driver checks the maximum size of
> a mapping for the device and then adjusts the max_hw_sectors_kb
> if required. After this patch is applied, the block settings will
> be the following, and then the issue doesn't happen.
> 
> 	max_segment_size = 4294967295
> 	max_hw_sectors_kb = 256
> 
> Fixes: 09324d32d2a0 ("block: force an unlimited segment size on queues with a virt boundary")
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  Changes from v1:
>  - Call blk_queue_max_hw_sectors() for the maximum size of mapping
>    unconditionally to simplify the code by using read the value back
>    from the queue in the end.
>  - Add a comment on the code.
>  - On v1, I got Reviewed-by from Christoph. But, I changed the code a little,
>    I removed the Reviewed-by.
> 
>  drivers/usb/storage/scsiglue.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
> index 59190d8..556bb4f 100644
> --- a/drivers/usb/storage/scsiglue.c
> +++ b/drivers/usb/storage/scsiglue.c
> @@ -28,6 +28,8 @@
>   * status of a command.
>   */
>  
> +#include <linux/blkdev.h>
> +#include <linux/dma-mapping.h>
>  #include <linux/module.h>
>  #include <linux/mutex.h>
>  
> @@ -99,6 +101,7 @@ static int slave_alloc (struct scsi_device *sdev)
>  static int slave_configure(struct scsi_device *sdev)
>  {
>  	struct us_data *us = host_to_us(sdev->host);
> +	struct device *dev = us->pusb_dev->bus->sysdev;
>  
>  	/*
>  	 * Many devices have trouble transferring more than 32KB at a time,
> @@ -129,6 +132,14 @@ static int slave_configure(struct scsi_device *sdev)
>  	}
>  
>  	/*
> +	 * The max_hw_sectors should be up to maximum size of a mapping for
> +	 * the device. Otherwise, a DMA API might fail on swiotlb environment.
> +	 */
> +	blk_queue_max_hw_sectors(sdev->request_queue,
> +		min_t(size_t, queue_max_hw_sectors(sdev->request_queue),
> +		      dma_max_mapping_size(dev) >> SECTOR_SHIFT));
> +
> +	/*
>  	 * Some USB host controllers can't do DMA; they have to use PIO.
>  	 * They indicate this by setting their dma_mask to NULL.  For
>  	 * such controllers we need to make sure the block layer sets

Hmmm.  Would it be easier instead to copy the DMA mapping parameters
from us->pusb_dev->bus->sysdev into the SCSI host's parent before
calling scsi_add_host()?  That way the correct values would be
available from the beginning, so the existing DMA setup would
automatically use the correct sizes.

In fact, the USB core already sets the dma_mask and dma_pfn_offset 
fields for the SCSI host's parent (search for dma_mask in 
drivers/usb/core/message.c).  Is there something else we need to set?

Alan Stern

