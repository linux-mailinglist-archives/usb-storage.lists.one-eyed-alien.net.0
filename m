Return-Path: <usb-storage+bncBD64ZMV5YYBRB5U6XWZAMGQEWH53BCA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id B655F8CD574
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 16:15:19 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6a35d0f1673sf2253846d6.2
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 07:15:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716473718; cv=pass;
        d=google.com; s=arc-20160816;
        b=vPCJaT/6fwSMqnqqheezq0sMTIInzEDUUFtMjfbA8AdJG2PxWg19zGvtoc2q9a8pkX
         ZhW6dyNY6aykK9ZV88ZwsKse4O01GhYsogm1wdNBzm5doX7wUqf6gLXk7RMuv/onp8SI
         k6WLq1NDdFB/djjVl+s0F1k4U0QAYxcUXpq7JwpVDqjmst+bQInnQ1Qx3SWbM6kPoRwJ
         ILsHUnndpNLbY/YPOuYBYbvGaPsT1i9kQQ/Fe/Mr3Y91YPX5237qqlelQOmBFaXsT/4V
         rNwPnVxi6xb0FJMWqX9CkNnJGDYtGtZ2Z49Jt6OqZuoW1oBBLK7Ef2CUjPCC8pSUWDEs
         gUyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DKxs3kOKdAJUSOKZUO9PKrk96ExhEHg2SfKd6mbmTTQ=;
        fh=7eGK9moJXcuuEQYTQ7wjeggHbr0l9J99zRJHOL8rTb8=;
        b=KIxvMQmsv/L8sUilVQ/J063xKr8jmwdgtuEbaorGLGGO1EA0pyvhWWGNcV7uDhQ/yW
         DnV8qC8pvNUg5AxhZBKRsgzhSTb+jYLXTSI/4epsH2YmRedFiGz0+NtCsijqjY+0nKRf
         1wDUr1BMHnBYfyJds0imEewvOi2YBNrTFspsNeV12BVWNp0qY4dlsWN7trg4bZMefnw3
         nVlvaGCuAnCKXJtbWGg/C4ykeyMbrlBudUG9B7LPuzQOfqDJTy7uwTE225DU8qJ5qPbZ
         AFWxBKz3ny3AhNNUB9xwF+WK/PHt0RBBWdfPW77t9UgaVpdaqCHS/YOiGsaquaaqHT2a
         2Iug==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716473718; x=1717078518; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DKxs3kOKdAJUSOKZUO9PKrk96ExhEHg2SfKd6mbmTTQ=;
        b=XtwE4CpUZ8KiKy3acPFrWfHAOorEOd+LPhI8gS9PD77ED2re3/Oez01cd4ro0iRBeM
         ah+6H5gN9h5ZULBTQLfYHVH6qvDjjqRnSBLFN9s+fE2j9qU9VtNl7ZjrTwRsTc7cZ7GQ
         qgvdYl8GJqiRwoNmGg8s7JLdytCbTqZtMJC+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716473718; x=1717078518;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DKxs3kOKdAJUSOKZUO9PKrk96ExhEHg2SfKd6mbmTTQ=;
        b=sX37kl4QWdc+tqg3UR6DycZ8q+s7OzAIvjhVpvL6CN6A+uWGpz+sm+VJ979eHjWYFg
         8NeSKkKcufzj57LGaDZ7geMwdaXj6h/xLsPgiUizhyuWAG8S9gdZF6tz6oHtXh59GfmB
         7H0U/e9itHROk98ZpuVJlyEP8crOiFF8enhjjmMFTMaz1GVYmikx4eQoXeeWfM7jjw2e
         di+LEn1DU+LFrUgDXAXpjF8TEKCpqPxr5+5CAKBlRqEqPasxWr9pUh++ec0xZSI+VOPP
         sdFyYcI4apvr1L6tLY/z4fYnwyuAmCv+/uHquveo45h/qRiZgl/MjQvnXj3O1Cz49gaj
         y51A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWS8f7dr5dAK55R5IzZ7lrAW7Ow7l8oHW9pTVXtOzoOqALj6FjRgEy9P3lqYbo2racB1Y5Ha61Yg/1HgJdDUTwht3LGJPnZg/O8
X-Gm-Message-State: AOJu0YxifgvuxeH/cXBnlNEw5jUgXNfSxvKUGgPQ10hHcHFypzIZMB5C
	PVwtcy4f1c3lI/Q1HC+xyG3VUAzGtgxKTbKjP8iYnM13+oe3+dL3sS/Fmi38hQs=
X-Google-Smtp-Source: AGHT+IGq60cl/iUWu43ZBdGm+6biZ0fUfyAQhKxNQPrQhgPt0IOXWRYxHYaYlrsT8OTox+AL5fn0Pw==
X-Received: by 2002:a05:6214:3c87:b0:6aa:4a99:eac8 with SMTP id 6a1803df08f44-6ab8090d848mr55909006d6.54.1716473718749;
        Thu, 23 May 2024 07:15:18 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2402:b0:6ab:1eef:dd62 with SMTP id
 6a1803df08f44-6ab1eff22fels73245476d6.2.-pod-prod-07-us; Thu, 23 May 2024
 07:15:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXOWEA/Avw4S48naWWlZbKmsnM8Hm6dWecfcvIB6D2rAshv5K5LEk97JR6jCbnuw8aqjRFde43cs/RDfDScu21qdbelT4jdfAbRLrBzph71XGKJybw=
X-Received: by 2002:a05:6214:3f93:b0:6a3:48d8:25f9 with SMTP id 6a1803df08f44-6ab7f36b7cemr56669876d6.30.1716473717669;
        Thu, 23 May 2024 07:15:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716473717; cv=none;
        d=google.com; s=arc-20160816;
        b=XBKocK4j5lEcJV4q2CIFBnaQ9vtjHxjX0T4xVldr+9UR8Ffd0lvOnTyyJED8dx44J+
         1FDd51JIx0OaEv0CKJ9yN7TghJPJkn+WZNjYcPY9anGsU9v1rhNcNvxyXoNJ7D36RP7K
         ykO2RXX6Jru5xMdD52IpXahvDdIgfvzf9tkWsG6gwdqwAXU90kLIXMoa14/U1UGULI74
         ySR2zUXfj3EouXR0BuSUeYMRdazT7qeneS1DmbxErfumYwH5aLKJkwZytzbKmjvkgIvU
         3ZAV321ESkb36VjajtmLPU+wZna6TIZ9u3pvGUT4vnNv5VNzFtHua66p363UYnwXJLwx
         Qx2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=9BFfIJ887Xu7iupAyjQklTyzhf5wXFP357/0wDTwzv4=;
        fh=c0Oc7wSUMHapCIkD3ff/I1F1lRNZD+z7U3Hce7kK5Wc=;
        b=HU31tFLY5NcW2NytlPCz/ipcSrDLzu9TOZm2QptHK1tk3I28cDh8QTlIq1bLW+Zx/z
         ByY2rwfFzuibs1vAavZQIVHZ/sBVY/lP3X+pkN/uFQKCoIPL42U7Z4bEVSZx6hTXkLV7
         fY0UjZC9IS54zOD9aEdKtZbamd0jh7uDs4GckeEwzqeMrRHqgD9fgUjwS1II137d38QC
         QkO9nc+Q+OGbWXx2tOMhRDnznIEuaH4/iToVv8gbca2r8G9Fe3i0kDqP4HjqN1J2m/7z
         8j7IzAco6ExOUsRXo/XIXsh4lCLOEwF/A78Y0SPEBPAdU28vplFWhwIplVXbZrfM/UtX
         mZzw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id 6a1803df08f44-6a15f2b60d2si60064416d6.344.2024.05.23.07.15.17
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 23 May 2024 07:15:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 539510 invoked by uid 1000); 23 May 2024 10:15:17 -0400
Date: Thu, 23 May 2024 10:15:17 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Shichao Lai <shichaorai@gmail.com>
Cc: gregkh@linuxfoundation.org, oneukum@suse.com, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
  xingwei lee <xrivendell7@gmail.com>, yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] Re: [PATCHv2] Check whether divisor is non-zero before division
Message-ID: <bb581989-4ac5-4ffe-9f80-01b5f993146f@rowland.harvard.edu>
References: <20240523092608.874986-1-shichaorai@gmail.com>
 <a0afa88b-f84c-4b45-a265-2e6bcbb84b35@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a0afa88b-f84c-4b45-a265-2e6bcbb84b35@rowland.harvard.edu>
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

On Thu, May 23, 2024 at 09:58:21AM -0400, Alan Stern wrote:
> On Thu, May 23, 2024 at 05:26:08PM +0800, Shichao Lai wrote:
> > Since uzonesize may be zero, so judgements for non-zero are nessesary in both place.
> > Previous check is moved out of loop, and one more check is added in alauda_write_lba.
> > 
> > Reported-by: xingwei lee <xrivendell7@gmail.com>
> > Reported-by: yue sun <samsun1006219@gmail.com>
> > Signed-off-by: Shichao Lai <shichaorai@gmail.com>
> > ---
> >  drivers/usb/storage/alauda.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> > index 115f05a6201a..a6e60ef5cb0d 100644
> > --- a/drivers/usb/storage/alauda.c
> > +++ b/drivers/usb/storage/alauda.c
> > @@ -818,6 +818,8 @@ static int alauda_write_lba(struct us_data *us, u16 lba,
> >  	unsigned int blocksize = MEDIA_INFO(us).blocksize;
> >  	unsigned int lba_offset = lba % uzonesize;
> >  	unsigned int new_pba_offset;
> > +	if (!uzonesize)
> > +		return USB_STOR_TRANSPORT_ERROR;
> >  	unsigned int zone = lba / uzonesize;
> >  
> >  	alauda_ensure_map_for_zone(us, zone);
> > @@ -923,6 +925,8 @@ static int alauda_read_data(struct us_data *us, unsigned long address,
> >  	unsigned int uzonesize = MEDIA_INFO(us).uzonesize;
> >  	struct scatterlist *sg;
> >  	int result;
> > +	if (!uzonesize)
> > +		return USB_STOR_TRANSPORT_ERROR;
> >  
> >  	/*
> >  	 * Since we only read in one block at a time, we have to create
> 
> This is definitely NOT the right way to fix the bug!
> 
> uzonesize is set once, when the device is probed, in 
> alauda_init_media().  That is where the check belongs; if uzonesize is 0 
> then the function should print a warning and return 
> USB_STOR_TRANSPORT_ERROR, because the device is unusable.
> 
> It's probably a good idea to check pagesize, blocksize, and zonesize at 
> the same time, even though none of them are used for any divisions.

Wait a minute.  I just went through the code more carefully.  It should 
not be possible for uzonesize to be 0, because it is defined by:

	MEDIA_INFO(us).uzonesize = ((1 << media_info->zoneshift) / 128) * 125;

where media_info->zoneshift is always a value between 8 and 12.

So the whole idea behind this patch is misguided.  The real problem is 
to find out why uzonesize ended up being 0.

(And it's not necessary to check pagesize, blocksize, or zonesize, 
because none of them can ever be 0 either.)

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bb581989-4ac5-4ffe-9f80-01b5f993146f%40rowland.harvard.edu.
