Return-Path: <usb-storage+bncBD64ZMV5YYBRBQ6J2KZAMGQEGBJKQJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 9577B8D05D9
	for <lists+usb-storage@lfdr.de>; Mon, 27 May 2024 17:20:36 +0200 (CEST)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-43e40216800sf42416371cf.1
        for <lists+usb-storage@lfdr.de>; Mon, 27 May 2024 08:20:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716823235; cv=pass;
        d=google.com; s=arc-20160816;
        b=lDM/tV6CBi+CNjYSpoWnCI3RiFb6UsC8ULVM3a4D+mBEhNnwOIHMj2f4TR09jIWA+u
         DMRNnS91ct+RAMT+vUH+fhAodYnms3DhtVx4arDkQ0MMbiS2rrWmFqUwbBSVBHcQDgar
         ztja4sqcrHL8kCELepqXW9uJupOYoFXjWQBlCXyw0NunSEONKJjEuVPtqzxLtk89w2MJ
         scAxAR1tp22YqZsQvuW0EfDrvO+FCkNJN9yWY6ZN2qcPu6VZi2P4nzFnpf9qzHlQdrNv
         ECAGlH8UQehrWWL859w8ByV1XE4DsN1UrIsBnVJo0Pc871MnZhRcT5Q6cHWc6o4kROGX
         UjAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=u0EJadzlvb/7182NyGTjqbKSBHQDpxLiYrrNnescDlM=;
        fh=a55+2h5XE4mo663evHADL5ux0/RmhXpAomeOCfgvT8I=;
        b=lo3Ifi5Xofa3A93vC9gcr4fzeAKnTYxibub3qlSZG7Mvds8EZkBh2n8MD8J4R7KTyi
         PKBj+ln6Ugy39OTlUEKk4+sQBieAnxR69rrAMHgUYvm8k2jFY2le2l6au3q82qgFohli
         bQFcSvrb+dncpaHrkUwoKA5nfmWYsgToKGjkpyau0bKvdxWfdf3I/mfTe7aZuvh1iO/J
         ehhlhTiNX4MkVoQApBIf6jnBet/9Onb4nLdcvWtHO/MNa51nqwgA+fWxNQW9K4DfSSoI
         3rwsda9WUhhAptlquLZPTJM8CYko6qGVJIVMRkDT9aEXRII9XoLJusO4UGB1R97OAD12
         kNzQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716823235; x=1717428035; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u0EJadzlvb/7182NyGTjqbKSBHQDpxLiYrrNnescDlM=;
        b=B5yJYZEGC01cUapUKi3cPJjPJz29+Oq5DB4QwYhQkQPtWHdB6F7NH5bX8g6LrL03I7
         0DbOjw2YNtu2OHiy6On1NeFMBhG9fDOAc1//TlZtokwNbPEMQlWyqqrs5GA8L/kGE+CF
         RVnMBfu6v6hGVzRvopYFxaOQkH0TeNjOE7rKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716823235; x=1717428035;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u0EJadzlvb/7182NyGTjqbKSBHQDpxLiYrrNnescDlM=;
        b=V2tHKSHCjtxHwiVLxJWy6rqzBL7Cs6iTuWXD1yPPgjfgHYz6JgzWDWGfgzhzlboLEE
         DZyGT7N41fcnsi2OjT/fa270jTIMz1fEyqGgpj4mUUvnq9GTs+GnTH5E+DR61YoCpGP/
         m79gAaWEySgeMs0yPJbkEFaCGLcW+hKc3OZ83VZtAlgI4juJonK/PaYFtLvieIaVsGQi
         VkSNlYEFKbPuqa6dzSWA1jgLRaGRRvtPfHacWrp1YhGsKVjoLmMHFGHHzEaOELxrZtC2
         5O68jEwx5n5ODO2ZMwJC85PiIRCz2T6mH4CsbmfAc4+O32a2XKQWYcfrpxlo+baNdWph
         Mzng==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVZOP3DmUHe5weGpqxwWe0WPv8NOrwjh+ccoPwVcuR89NsJFN+ANlWSEDJostldm34g9Jg8VvkFxTUl9U2MyB12JWLNpicpyhhC
X-Gm-Message-State: AOJu0Yxd5ggcHnq9fCJxd5JO3xhBH2ssdlwxYIJQ5VHEbqGkz1t2sLYd
	YscWFBcysOrLfC1HPzPL705mG/9jXTifHxBEayNa23WqYiH28dV2ggsFZeO+LIo=
X-Google-Smtp-Source: AGHT+IFESmQ0Nt7udGpj+3TpP7Uwv6lxHKmeGfKJ+d/N73ENQEJS45rccjfiQ6JfjQ3RGRi1PVxo6Q==
X-Received: by 2002:a05:622a:50f:b0:43a:829b:a447 with SMTP id d75a77b69052e-43fb0e6f747mr100815301cf.35.1716823235232;
        Mon, 27 May 2024 08:20:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:7f87:0:b0:43a:f936:3cf8 with SMTP id d75a77b69052e-43faf014ebels3754491cf.2.-pod-prod-06-us;
 Mon, 27 May 2024 08:20:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWHi9N738utixSP/hVoE2flEBywdA7l8ac8G1XTD3GOozFjx7F3rO4xOfI2wsltaeJxv4v2JOTq0IXCb0XaQm/GwcxTXdnzeET4/eRfU2G/Q/nis0Q=
X-Received: by 2002:a05:620a:810f:b0:792:bcb2:ab5f with SMTP id af79cd13be357-794ab09a381mr887749785a.40.1716823234135;
        Mon, 27 May 2024 08:20:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716823234; cv=none;
        d=google.com; s=arc-20160816;
        b=cDT+1H+1jjHHGh+WoWcizBNzmCuiHlsLz0oVrnwb8g4xEniGbo8eihyXrAfyNrFk1d
         DFPfeK13NLdg4rJYJ32LZql4MPs+IrsigViIGqtMno4mT4nty79+cau0iR6hi8E+oz6h
         tI6nnVC0Tl1IejHzcrl1Y+W9Sm6AqfAaQhig2XAeqnhZnoXs1+Amf3jtPdcrPg8P4400
         Y/U25SlnEwWpfwlF1TfPQKPj/mZ7SSrHktbcdWnRD4Qh+wMeV0sGb+6iiA3nmpX62bXx
         UL/84z7L8NDltowQI7u37B/Ir03k0Q1++N/azYiZiuj8TmvMU7nAao7NWHJsSUjlTVNV
         LeAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=CrqdfHqqj0QuIJjAO2gIum5wMd5h0JLrAM3a9haWuh0=;
        fh=Qhw3H5wolCumPEwKQtMhWJS5DXrO8diy/UicvQXL1hk=;
        b=C54L3sBba+0jkNybF3hZv5Nl/yeKalijH8QlgD6PWSC7joDU+U0IuWMAlGuZf1PXtM
         sPIirRNgCuqRzKITi5yqRSjMn1yfho9ufnBvjVpfRnul/DMSCtIT9R5RD70qKdTlN5C7
         OAfZLcapdTDid37ylQztdy6Hktbgwe1RLAM4dXYR98teFhzZCTCV3REXQv9HN2VnT/yZ
         E7zUPfqyPlQXINE07TLjbNc9IQJuC8X77BQmeLzJ2HybQV9V6EVpmm18g6UvLl64T8fU
         f+73619tRmCeKFWGWOlXL7xAQs6OJMR4/GO7mYtEwuYcrhCssZ2unejjpbDmWIGuHq99
         dJaA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id af79cd13be357-794abcc66afsi789379485a.220.2024.05.27.08.20.34
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 27 May 2024 08:20:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 662485 invoked by uid 1000); 27 May 2024 11:20:33 -0400
Date: Mon, 27 May 2024 11:20:33 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Oliver Neukum <oneukum@suse.com>
Cc: Shichao Lai <shichaorai@gmail.com>, gregkh@linuxfoundation.org,
  Markus.Elfring@web.de, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
  xingwei lee <xrivendell7@gmail.com>, yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] Re: [PATCH v6] usb-storage: alauda: Check whether the
 media is initialized
Message-ID: <5a3057a5-8d20-4fc1-92d7-932c0f2b6c92@rowland.harvard.edu>
References: <20240526012745.2852061-1-shichaorai@gmail.com>
 <8176c55f-980c-4dcb-9e17-8c9c948ce216@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8176c55f-980c-4dcb-9e17-8c9c948ce216@suse.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Mon, May 27, 2024 at 05:01:13PM +0200, Oliver Neukum wrote:
> On 26.05.24 03:27, Shichao Lai wrote:
> 
> Hi,
> 
> 
> > The member "uzonesize" of struct alauda_info will remain 0
> > if alauda_init_media() fails, potentially causing divide errors
> > in alauda_read_data() and alauda_write_lba().
> 
> This means that we can reach those functions.
> 
> > - Add a member "media_initialized" to struct alauda_info.
> > - Change a condition in alauda_check_media() to ensure the
> >    first initialization.
> > - Add an error check for the return value of alauda_init_media().
> > 
> > Fixes: e80b0fade09e ("[PATCH] USB Storage: add alauda support")
> > Reported-by: xingwei lee <xrivendell7@gmail.com>
> > Reported-by: yue sun <samsun1006219@gmail.com>
> > Reviewed-by: Alan Stern <stern@rowland.harvard.edu>
> > Signed-off-by: Shichao Lai <shichaorai@gmail.com>
> > ---
> > Changes since v5:
> > - Check the initialization of alauda_check_media()
> >    which is the root cause.
> > 
> >   drivers/usb/storage/alauda.c | 9 ++++++---
> >   1 file changed, 6 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> > index 115f05a6201a..40d34cc28344 100644
> > --- a/drivers/usb/storage/alauda.c
> > +++ b/drivers/usb/storage/alauda.c
> > @@ -105,6 +105,8 @@ struct alauda_info {
> >   	unsigned char sense_key;
> >   	unsigned long sense_asc;	/* additional sense code */
> >   	unsigned long sense_ascq;	/* additional sense code qualifier */
> > +
> > +	bool media_initialized;
> >   };
> >   #define short_pack(lsb,msb) ( ((u16)(lsb)) | ( ((u16)(msb))<<8 ) )
> > @@ -476,11 +478,12 @@ static int alauda_check_media(struct us_data *us)
> >   	}
> >   	/* Check for media change */
> > -	if (status[0] & 0x08) {
> > +	if (status[0] & 0x08 || !info->media_initialized) {
> 
> If we take this branch due to !info->media_initialized and only due
> to this condition, alauda_check_media() will return an error
> 
> (Quoting the current state):
>         /* Check for media change */
>         if (status[0] & 0x08) {
>                 usb_stor_dbg(us, "Media change detected\n");
>                 alauda_free_maps(&MEDIA_INFO(us));
>                 alauda_init_media(us);
> 
>                 info->sense_key = UNIT_ATTENTION;
>                 info->sense_asc = 0x28;
>                 info->sense_ascq = 0x00;
>                 return USB_STOR_TRANSPORT_FAILED;

Indeed.  That's what would happen with a properly functioning device, as 
opposed to a malicious one or a purposely defective fuzzing emulation.  
The point of the patch is to make the system treat these other things in 
the same way as it treats normal devices.

> >   		usb_stor_dbg(us, "Media change detected\n");
> >   		alauda_free_maps(&MEDIA_INFO(us));
> > -		alauda_init_media(us);
> > -
> > +		rc = alauda_init_media(us);
> > +		if (rc == USB_STOR_TRANSPORT_GOOD)
> > +			info->media_initialized = true;
> >   		info->sense_key = UNIT_ATTENTION;
> >   		info->sense_asc = 0x28;
> >   		info->sense_ascq = 0x00;
> 
> It seems to that we need to evaluate the reasons for taking this branch
> and the result of alauda_init_media() to compute the correct return
> of this function.

The return value is what it should be.  With a normal device:

	We see that the device reports a media change.  We read the
	characteristics of the new media and report a UNIT ATTENTION
	error, notifyng the SCSI layer about the new media and forcing
	it to retry the command.

With the defective syzbot emulation and the original code:

	We don't see a report of a media change, so we try to carry
	out a READ or WRITE operation without knowing any of the
	media characteristics.  Result: division by zero.

With the defective syzbot emulation and the patched code:

	We don't see a report of a media change, but we do see that
	the media hasn't been initialized, so we try to read the
	characteristics of the media.  This fails, so the
	media_initialized flag remains clear and the command continues 
	to fail until the SCSI layer gives up.  (Although maybe it would 
	be better to report a different error to the SCSI layer when
	this happens; UNIT ATTENTION with 0x28: Media May Have Changed 
	doesn't seem right.)

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/5a3057a5-8d20-4fc1-92d7-932c0f2b6c92%40rowland.harvard.edu.
