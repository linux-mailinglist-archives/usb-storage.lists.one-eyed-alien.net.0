Return-Path: <usb-storage+bncBDUNBGN3R4KRBJM5RDUAKGQEKMGUQAA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A1D43461
	for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 10:51:50 +0200 (CEST)
Received: by mail-wm1-x348.google.com with SMTP id f189sf1567443wme.5
        for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 01:51:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560415909; cv=pass;
        d=google.com; s=arc-20160816;
        b=DZZJzjMMedw4K0W17KK8LMH+r2eHkgIJ3r2tOWGiziTHXw5Qp9ZXeHGxNIOQTZQbxg
         XmcfNBfjajYCj/Tgy0gjAD+zpSlK6s7OJUxAs87abeFmoaVCPHIbbtVfKY30TBiv2cB/
         vxjFJs6SZG+HONmnNtsy+ugE7oT4tyR+o+BtAl7tkMtdb6Noqt1L5nRMMMZ3jBRh80Eq
         rbxBzJtbamwO3JDkWkQ7HMnIOkPqbqo8TZw4AMX7Zh9oEPEi9ZO+BaJS4/t0F6lAhXwD
         FYUm1shgKUcmN7ejRy7AxSDdq0Mu/kukTUMIXxgXGuXNL+HmRhOC3+44JS4AZv4V2FgM
         XSQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=AKj1npd5KYmvVL41yHXbz2pXllF8LTGixkcbEAuo1T4=;
        b=DUrAT+Ca7mwrAoToek0UKwOMmvfxVC7KBjvcfAX5UMhe6BbB3EG24+AmDF9DxY1FD9
         C6PS7hBOBIiY6RBUUjH2uYSDCezyuHfFwyO1uy4j17b41edOFkSjw2DYG3c+bBeR2eGB
         vt5Hn2BvGJxYFMUPn+0K4RBxMfTirh1MWnPn+lIVfyLEEOxUSmcPrLW14KM2Ney6YvdV
         y+TWDJa9xhZsrEej4Q8NqlWQicRjOzu9nyxcTgYmqX4wRDRONJy4t/0o6eS9UVOdQSo7
         bDOb3SlHxR2ph9lvCxl0G5wnHsYEdZFKIHK/sINmOcmwxH/H0vwZjl4Qux2E0FUbTe5+
         fpjg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AKj1npd5KYmvVL41yHXbz2pXllF8LTGixkcbEAuo1T4=;
        b=Os/JCqHrQCWeXqC2sxlRmtzP8sA9LnG954SITmGAEyXaZJ0PRdWyCLGHLjgu0DS9JS
         aUI3wn1A8HQpksWoSMuAEXlsRCIGi4uANsA8YTvjWosHOz7KlssZPEcPxzr07ezdyQDC
         qnURocECxX6KVm+xJgERnLL4G4bCahlVDFI+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AKj1npd5KYmvVL41yHXbz2pXllF8LTGixkcbEAuo1T4=;
        b=LC4G448TRu1S53T2vEne3A97CTL9k5neVrZ0GK7jN+Nb3gIjGgHmxF45YOrOj3gZuG
         WklToHTpnbdVjfvCdviuLkN64K1fW+oKfZ0+e8dmHOGBkRi3WiugulkZE6SLqpoi/iLs
         HJ933krYi4q3U0LLikTtGLaf4JyjcAUYvC8leK/FZRPbyHKF/A8Ns16pfODqjrS2u3fa
         YRWt3toXXlj47bD4v4R67zVBt/GEwnSTb9bQ30Nyfk+jW8mI/HP2AIhrRnSs7v8NkoHR
         7lLt50TgMLfEtZy4lmAnU1zXMrBtDZDZTJrp+fdS3Se3xHuddf/nz2KuXGS1faMe+70L
         LzpA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVEJagCdM4Y4lElBgPp+EGMpzqOzMgtmU/O9PzzLIw5OwRux84G
	M6xNKoOHWfOsigg4NGCPy3m16Q==
X-Google-Smtp-Source: APXvYqz9tg2tm9IdRDAFY0xKxs7xAI2K7HRcr6oukNupLdK+H0+dopxZuj5jWNWnlBT/NA1oxXtymA==
X-Received: by 2002:adf:f006:: with SMTP id j6mr46717588wro.243.1560415909785;
        Thu, 13 Jun 2019 01:51:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:db4a:: with SMTP id f10ls1169048wrj.1.gmail; Thu, 13 Jun
 2019 01:51:49 -0700 (PDT)
X-Received: by 2002:a5d:4b0f:: with SMTP id v15mr1539658wrq.201.1560415909017;
        Thu, 13 Jun 2019 01:51:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560415909; cv=none;
        d=google.com; s=arc-20160816;
        b=xzwTHoYH4wwfGdV31kaLIyLuvRlWOQ8zvypn8nmA5igJ6lnGCKX0VzkPg20row3Usx
         6CJjaIeWk7ief2aSdOuqJ4dU5UPIExcrW+VKk9cPOHX9D9htIU1IAbP+4LggKTnL9zQH
         UE6zbEWxMKpGzFbVZP5V3aMGGDbx5P9p31ATIFdLpWTcjIgmX4YpAGadi86TvCCp7Z7d
         8qjlaPQ/HbY0J8HdVxdypFCQOGRiLj9ZOCXKryrLpBsTt6fILK+IRC9DjBUuYxubR7Iq
         ZKAwkvfeSKFT4x8jQBHtTaV+nm9g1lzRztDokChki/wKZ792G4IG1hF7FvD+KgVbjr9x
         fZwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=NWV6jlZSZ0+EAF9IlV2UEh67XodyNmOM7aLOHYX7riU=;
        b=mcLae2CoBkjEoc2sbkv8n2ArynPutdGcrC8L4w0CiGp7rEZqNT4mGiNTU8Bx6AHML2
         sbbjSXc/BbYGhAXUgLLIAUgXIm3vDO8IMSmFRiAUWZz5BtGVz9WNLg+dDT1LNAm/FStJ
         L2738DLCX9gSbluNT7qjnIHXj9A+RQmorltyglVpvThtAAhYxtgoAnIJ+1mDGEj3kq/j
         h5wtG2L/eMdOrATVtZl9dlhVbr+akLz9mSzRqE6Rrmmjw7HTXUL8LqA8OdhUCaFB12cU
         wYYiFUsGaVUafuRcxHO+0gbLFP/XtzAuuWJWBQtQyJn9pOzK6O74FM492OIG8di8zadZ
         TxqA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from newverein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id m11si1596509wmi.71.2019.06.13.01.51.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 01:51:49 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by newverein.lst.de (Postfix, from userid 2407)
	id AC80D68B02; Thu, 13 Jun 2019 10:51:21 +0200 (CEST)
Date: Thu, 13 Jun 2019 10:51:21 +0200
From: Christoph Hellwig <hch@lst.de>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Christoph Hellwig <hch@lst.de>,
	"stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
Message-ID: <20190613085121.GA13442@lst.de>
References: <1560400504-26884-1-git-send-email-yoshihiro.shimoda.uh@renesas.com> <20190613073346.GB12093@lst.de> <OSAPR01MB30899FBDA010F0465599437AD8EF0@OSAPR01MB3089.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <OSAPR01MB30899FBDA010F0465599437AD8EF0@OSAPR01MB3089.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of hch@lst.de designates 213.95.11.211 as
 permitted sender) smtp.mailfrom=hch@lst.de
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

On Thu, Jun 13, 2019 at 08:46:00AM +0000, Yoshihiro Shimoda wrote:
> I believe this patch I sent has already covered it. What do you think?
> 
> For examples (all value units are "sectors"):
> 	default	mapping size	max_sectors
> case 1	240	MAX		2048		--> we use 2048
> case 2	240	512		2048		--> we use 512
> case 3	240	128		2048		--> we use 128
> case 4	240	128		64		--> we use 64

Yes, I guess your version is fine after all:

Reviewed-by: Christoph Hellwig <hch@lst.de>

although I think it might be simpler to just read the value back
from the queue in the end.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190613085121.GA13442%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
