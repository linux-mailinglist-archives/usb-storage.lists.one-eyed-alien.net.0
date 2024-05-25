Return-Path: <usb-storage+bncBD64ZMV5YYBRB4GQY6ZAMGQEITICVNA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F208CEF18
	for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 15:32:34 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5b971afc524sf1844341eaf.3
        for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 06:32:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716643952; cv=pass;
        d=google.com; s=arc-20160816;
        b=oRyjJDB/XHscKrl8UwskBFBZmxEMgULUP2MhO8K5eOS1S6boAV9Kdpy817lLVTZh3j
         sNXw/s6cZikyVuDCO8gLoqzl7nGITRJ3iH1bBb3Njr/Og5e/IXLq+GS721yRfNIe794k
         ZFAV19LsOpr0Pyllp7eYdLDSFEBb9+ux/nQeT26GN2/ztDVSVJnyI2zcVGXQlIRfgbLZ
         1yzOkp7819UFfi2UbCHzD3sGxPbxJpQ36X2jfVlVWQkUJVKgGdJjvmRa9BZltchPv3hd
         NUxFLuMfau6nf+0/k74ihPxS8WMbU7xjZoufR5PI+Igkcw90msJIUH3/9fckx3N1nhyh
         R0jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AMu4QXQIec9dL00dhGBD6Zq8u8xzBP6AjvwH0NRmj9I=;
        fh=LWprhJCRddPt5gA+rOXkkq9MzP2Grppdj4cyNuDgUTs=;
        b=IzeBNosCs7h3Va4lj/7pitVZQCH/RdwXHkk2Qn48432oYyXd22bWyqaLMtv5j5LIgK
         QPkB5XeKEJT1IQsf1/bGwAPYSX+aGYgLAfQebPzigbc9oK6dU/SabUKct4lMiLJw1Btm
         rh9CvjVXtCR5atkj+Z7LWLrqneQCqq5nasHl0sd9GVkB5lIoABMFBgIo8BISOoHK5BU4
         m/a3ZH+7PeCW1pekYep8wxPuSiREh3cMb4Ql6HuFTea+sUm+9dvTgMa8KehTHrbe8t/p
         KdFu29K1LO7n/betjfyqflhqhOiBIF4o1nvu2IC6M5enkqnjiuKsYr0wF1HN7h4Av8ZE
         lRvA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716643952; x=1717248752; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AMu4QXQIec9dL00dhGBD6Zq8u8xzBP6AjvwH0NRmj9I=;
        b=P4vRRNh8J8HkiXQjmcBIyMXSjIm966TYE1ZBjt7Ty5+UEKXkvxLOCyXjax+20NAn7W
         0qBftM3ooRp2PchT+YFvzXZ0OjE86D2O+KpFzQh0fFwIyxr+NE+nbwNWZ79WpCp9fala
         ZX6xkMAC0SDbnB8PWSw+OgqMwhvx2tPXILrcY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716643952; x=1717248752;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AMu4QXQIec9dL00dhGBD6Zq8u8xzBP6AjvwH0NRmj9I=;
        b=ETmJfAgoLfWBY8LmPX44dt6cVto3fQJQMZC1vP0BtGwwBd5t/tyTdwM4PJ8nBXMajp
         QCNoItGRsJhmLCV7Aqxo7hWLxZFnFefyP/7j/Um/inWrvSS5B4vs2PDXd44A32e8snIZ
         Nk6x8WVSs+ZqXFLYDXkRacQ51YAqgjktOSN36Op8wJbpq1jqOJVOAAb9d0AU0N5vnzju
         Eg6fh4gU96ePMloE9LPRkHoWpaQKsPrdvIOio61zL6jcCkOalCYWjfjkyzhpzZ3S5sPP
         jN6G7EFkYE/wpxwxo7q7BZQyE48Nx9Zv5MAdX1WC3NXb56aSc8Vhp+46WzKPwYBH5WmR
         Xrhg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUDkYmEEP2c3mvKqICE8U09OxmXCSxE19q3Lq+NuHt05vIUEpn+Vqqu7bQFSBys5RAEYUm1YouYegoobTOCcsCDUC/3qwEWMb0n
X-Gm-Message-State: AOJu0YzRKEDss35SCA5zZ3SXFsEG/tEH1oRyFvMz1/nJjPHgKyR2YjQV
	ogwhbJoY+FOKAmve1CCIQwn3Cs4XiSWne3qb/cS/1LG/vbbHJpBZHg97dfiXbNs=
X-Google-Smtp-Source: AGHT+IFW0icRr+U3K0hl43Na7r1vib74d2ynLVyMRyzQJk9tSGELHDxZ6DRrkhRme4eqqStdlenK6w==
X-Received: by 2002:a05:6820:1c9c:b0:5b7:1979:ec49 with SMTP id 006d021491bc7-5b95c5dea19mr4952406eaf.0.1716643952448;
        Sat, 25 May 2024 06:32:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:61f:b0:5b2:73ec:2f15 with SMTP id
 006d021491bc7-5b940a7d82dls1634971eaf.0.-pod-prod-09-us; Sat, 25 May 2024
 06:32:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXZAY7jhRm1Hv5sQ4tHXdyIUVW1U7x1ENbVgvww4fYjwUimal59unBRAEnzcNsT3UuzuFFiepMf7CktC9wszlmB1UUwde2uII79h0aFzPwVXk/flKM=
X-Received: by 2002:a9d:75cb:0:b0:6f2:6680:88c0 with SMTP id 46e09a7af769-6f8d0b4e1fdmr4449862a34.36.1716643951522;
        Sat, 25 May 2024 06:32:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716643951; cv=none;
        d=google.com; s=arc-20160816;
        b=sgWSIsTahN5VUP5WTskQul4MiTJbGSkGojayXWPF0ymXUuK1sqNfL0kaQZfNZ8i9Q0
         UidnrwkKIMqVAvYFnif1IjASZ+e3ZQgyq2YhgxRNNeQZf0q/l2FedbWWGZYmt3+YK11i
         Lc37RLx+7/E1S5hyQLCylJWmRrIdKHu+EjLGewU8gYok62cLQKjQt+1uywb2LFHLOwoQ
         HdsBZGJjyZXBIn99Ldc/vh2DFUSpN+KPJoRDo4xRvkHxCnr+2iCo8aD23fTY/fERLpa4
         PBMeJ581L1Zz4SLdubGEIatCVG5Fw7IyYIsdFfxcHoaPo/tSiYpwIDWcXprrxONY3iRz
         2lqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=QFK7Ei32tLjIOxpM9cYn4hlVtAlii+N90tjAX48NdSQ=;
        fh=c0Oc7wSUMHapCIkD3ff/I1F1lRNZD+z7U3Hce7kK5Wc=;
        b=dpiiwCxHjO6FJzaDCxhyvk5jAxgfwGKuSY2y7XDY/QLzfyqKNtQF+IC+TXM43qfVg0
         aQgnposT7EwMCt8Ayi7i8Y7p1db/GGgttC2MhiR9WccZiPRJDNuw35floo2+6Wo257oV
         XYZ9V4nMXOK273SGZ1keef+wQmGvHbz4ieBsYV5Ibg3IU995SPrI6YS54PHvVIFNv3ul
         LzKV/nwn20w+3EBwNhX5FCfkiACrqXoSM+etw/lNpVczowFMU8zrxmy3X/3J7OYtjUT0
         Ep6oZL6ved35PFhk9KYc7x+daet2cH27fgckcqbvF5izaBGfrqJ4jpNENJ1S7jm7ljTK
         Weug==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id d75a77b69052e-43fb18a6beesi40034791cf.272.2024.05.25.06.32.31
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 25 May 2024 06:32:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 606348 invoked by uid 1000); 25 May 2024 09:32:30 -0400
Date: Sat, 25 May 2024 09:32:30 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Shichao Lai <shichaorai@gmail.com>
Cc: gregkh@linuxfoundation.org, oneukum@suse.com, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
  xingwei lee <xrivendell7@gmail.com>, yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] Re: [PATCH v4] usb-storage: Check whether the media is
 initialized successfully
Message-ID: <503256e5-fea7-42ab-af15-015b0f78ab33@rowland.harvard.edu>
References: <20240525063653.2331587-1-shichaorai@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240525063653.2331587-1-shichaorai@gmail.com>
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

On Sat, May 25, 2024 at 02:36:53PM +0800, Shichao Lai wrote:
> The member "uzonesize" of struct alauda_info will remain 0
> if alauda_init_media() fails, potentially causing divide errors
> in alauda_read_data() and alauda_write_lba().
> - Add a member "initialized" to struct alauda_info as a symbol
>   for media initialization.
> - Change a condition in alauda_check_media() to ensure the
>   first initialization.
> - Add an error check for the return value of alauda_init_media().
> 
> Reported-by: xingwei lee <xrivendell7@gmail.com>
> Reported-by: yue sun <samsun1006219@gmail.com>
> Suggested-by: Oliver Neukum <oneukum@suse.com>

Oliver did not suggest that the patch be written this way.

> Signed-off-by: Shichao Lai <shichaorai@gmail.com>
> ---
> Changes since v1:
> - Check the initialization of alauda_check_media() 
>   which is the root cause.
> 
>  drivers/usb/storage/alauda.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index 115f05a6201a..ddf0da203481 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -105,6 +105,8 @@ struct alauda_info {
>  	unsigned char sense_key;
>  	unsigned long sense_asc;	/* additional sense code */
>  	unsigned long sense_ascq;	/* additional sense code qualifier */
> +
> +	bool initialized;           /* true if the media is initialized */

Now with the patch written out, I think a better name for this variable 
would be media_initialized.  That is a better description of what it 
means (it doesn't mean that the driver or the device is initialized).  
And then you could remove the comment, because it would be obvious.

>  };
>  
>  #define short_pack(lsb,msb) ( ((u16)(lsb)) | ( ((u16)(msb))<<8 ) )
> @@ -476,11 +478,12 @@ static int alauda_check_media(struct us_data *us)
>  	}
>  
>  	/* Check for media change */
> -	if (status[0] & 0x08) {
> +	if (status[0] & 0x08 || !info->initialized) {
>  		usb_stor_dbg(us, "Media change detected\n");
>  		alauda_free_maps(&MEDIA_INFO(us));
> -		alauda_init_media(us);
> -
> +		rc = alauda_init_media(us);
> +		if (rc == USB_STOR_TRANSPORT_GOOD)
> +			info->initialized = true;
>  		info->sense_key = UNIT_ATTENTION;
>  		info->sense_asc = 0x28;
>  		info->sense_ascq = 0x00;
> @@ -1120,6 +1123,7 @@ static int init_alauda(struct us_data *us)
>  	info->wr_ep = usb_sndbulkpipe(us->pusb_dev,
>  		altsetting->endpoint[0].desc.bEndpointAddress
>  		& USB_ENDPOINT_NUMBER_MASK);
> +	info->initialized = false;

You don't need to do this.  The info pointer is an alias for us->extra, 
which is allocated by kzalloc(), which clears all the memory it 
allocates to zero.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/503256e5-fea7-42ab-af15-015b0f78ab33%40rowland.harvard.edu.
