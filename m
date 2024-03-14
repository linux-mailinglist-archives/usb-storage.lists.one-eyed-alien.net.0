Return-Path: <usb-storage+bncBD6LRVPZ6YGRBFW5ZSXQMGQEQPFNM6Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AB887C1CE
	for <lists+usb-storage@lfdr.de>; Thu, 14 Mar 2024 18:06:32 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-690d02fdd14sf22107986d6.1
        for <lists+usb-storage@lfdr.de>; Thu, 14 Mar 2024 10:06:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710435991; cv=pass;
        d=google.com; s=arc-20160816;
        b=KVj/vcPKuirhZMC83kSQJ1ojzNBH5cyjYyOitvqePJz7TCoDfrs39WFFoGdt1Wl4Ak
         Daa7bP9bmMbPf2vkd57fFKOq5Q6uENufsDNWJl+jLAWYMOQxxQLcC7pnHy/+3JWovLNm
         kef5naZ6qpjOb3my8iIhfcmfPlQUipPu09rR7vHj/XZB+yBPZ7VfzECUc1cPoRAh9uPx
         0ObOoIZxXDzKlIp2IUKEdUeky3n1lPKnOvaOfeHGbeZzAAJPMjnIfcQQkAQ1rbYUx+iu
         hi0dVcfhJMKwPe26snVVXIIrQc0o8wXxo3cZDK2ra+grV4GpKgH+xqByDOhi68WM4tFX
         p3ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ELN0PqclKX5LdUXuF7PtfU3cBBpDsEt0eaWmGNwDr8I=;
        fh=bEYqKfSFoTemZn8/e6l4BZRjSVJs3mOd4is5A9PNtPs=;
        b=yGUNRqQg5Vla9w842MmCXc8KfG8+BCpTMRJj9hwnevn7Fu9Rvq0RGUgHowSlspIP3X
         KUwIRz6wS4NoDaqiz2icsYgvOYE3tMorXDg79Ks/0A3jve0sRjkz+c9iuDo2O/BaCXFT
         PB6nXSHCIiI4vqVcS4EXOSbaP80lvylH1Zmmf2QR2nSUfJzk+rW0+NJ+TFc5mPNRD4bs
         6NazpzlZOH9iZ+1tXWBgmu+CCseVVI6UJwHusA4xIcog8V0Cg39xU874x3oUTsXXRTEh
         t6WcUR0xZye+TwiQbn5msJXB3zlUhDWH1MGs2bnWnfSB7t4kxG36Ok5nDdXYHB3aRheN
         jpOA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1710435991; x=1711040791; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ELN0PqclKX5LdUXuF7PtfU3cBBpDsEt0eaWmGNwDr8I=;
        b=iV1k01F7xDTaVhWrg8pR5WkxROK+3Ohu4fzifeOTROMohbejdBBpJmzUBXqxF1C/Ni
         +N2klD99dheTjLkUCXtlrreiqzJF4rz8mK98x619He4cohM6gSdCrvDvxanTfQ7QlUeR
         MA1paZWSQti1IyI255KI0I3ScSlM4RzOnx1PM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710435991; x=1711040791;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ELN0PqclKX5LdUXuF7PtfU3cBBpDsEt0eaWmGNwDr8I=;
        b=kBnS3jkrgN6iUE7SH0hlzn5OSygyRwi4Qo6XuAPq0/FKTqebaivGY/gr6psWb0VcpI
         totaZiwHRLBg6mraqHBYA37zjzFv+wPFcKDEf/d8Ks4fJwbkVkFzfrD7z11LgK7bTKAa
         Z9vwDxX0f9Y23PJ2MZjAlUSpia8nLqiGp6MEyIo1nUsi2YW4611UedRj6G1tZIeKNu8p
         fQpYyFy5LCJnAX/EassHSL050dBm8rLH8LbMLR4q+hkbKlWEnkogcvE1JBCL2eCweYnk
         0cJUxs91t4IAeoEGIAVx7OjtmJ+XW01J3DhYZ3MYEQ4I+DFKrbWej2lzGpDKK2KIsuL9
         Kl4g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW+YRLnfOPgtjrkfcIJibBfzXWPLdUpOvKbmMrsmvWB4lqrn+RVi9rkDa6dEzwGElbJimZM7q7ChEotnH37M1ZMMXxWmVLcppFD
X-Gm-Message-State: AOJu0Yx5iJ7u9mjuMqHvttadv6APWoR22sYABfeTNchclYAk3CRcfJgI
	dRAqCOkGTBDlHZ83nmT1wQi5xlapl1/ZsYGIY4tx0Kxq0VQd3YFvaLRFvhalbG4=
X-Google-Smtp-Source: AGHT+IHIE8vA9H9t4L2pgepQmgZ21o/7Xy+7fsuxMEAnMMT0wEhECa1ud05QNG+7c2TQmPNUQ2+Ktw==
X-Received: by 2002:a05:6214:2cc1:b0:691:4cd6:c46c with SMTP id lf1-20020a0562142cc100b006914cd6c46cmr2733420qvb.30.1710435990903;
        Thu, 14 Mar 2024 10:06:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:5767:0:b0:68f:2ba3:a9d7 with SMTP id r7-20020ad45767000000b0068f2ba3a9d7ls1868986qvx.2.-pod-prod-00-us;
 Thu, 14 Mar 2024 10:06:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXKxMdDMZwmIQLx9wpoF5+9Oizz7KfPa7YZcr/trNUDarYLDTmBLyOqOoJTJ/MtU/cpILjrFpP1lpDnG84zdJaCt9QzqOYUFTJqPZcBm2gq6I3XekQ=
X-Received: by 2002:a05:6214:32a:b0:691:3eac:ef2d with SMTP id j10-20020a056214032a00b006913eacef2dmr3885824qvu.16.1710435990000;
        Thu, 14 Mar 2024 10:06:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1710435989; cv=none;
        d=google.com; s=arc-20160816;
        b=ooaH7ELds0tW96XliXHvDrQGadsUSbdKIsgu+Zs7ugSDo5JS6cf3HO2UlTPndjsagB
         TaP4UNMTg7cIu6GiXBxn/9lPASFQPZclu2jlfPc5VW3GAR+rZ8nS7Y5tQG/d8E/Ub8Mn
         lu1DzlUEFGiFSwFDmwCN8AcpEUPY7Dm9qsCWM8Y/RBSrAsDqBvs31pLAqW1iA62y9Xwp
         L7fm7ktjwG8icOYALJkVqBNHrhWbEGy4le/G5s3wtNIyMq7y+2oMzqmQXJf3Qkix/xmK
         rCfUp80qwCWHy1ksx/aKxn2nMXwd9X7UkXxLyWYqSSV9YSER3YCJq4JCeyrJQu+EM9mT
         RLNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=GX+R2mFtweVn6w+UCDzwSoD3EyRzsb7ZG26iHN7G9UY=;
        fh=IDNPMCBvChQMvx1mNkyHK1yz2B65sIXnzKnG9bboemU=;
        b=I+Yd96/eW8CI8xfE79liKv4CbZNohBflJe287+wP+NfucCAWNSYubo0Zm15w1GRH0O
         oyljnrbDM9fkfeCvZpRi7o84W/gyoIk/RPtm7L0t6fq2Eh3ARhxt297+OD9QsuIG+Hst
         QEbeyl36HIsKvZrAWsI9dEpxkCc2MJx13X/BV5kgtu6qk2IqT0wxj24kkp42LPqfc0Lw
         YZRCepb8hslymRqtFJpEflvJuyB+M2+1gacy6z4I/+O2xVX2hrXq8xpOzVRTYlYlRruU
         g4g1JE5JDVr4GrXW0bAVC+YC5xxKoRNZAC+1GGZ+x/tkvxcraJwzxWztNe6mC1/40iID
         Ld1w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id nh3-20020a056214390300b0068f572a9c1esi1008119qvb.153.2024.03.14.10.06.29
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 14 Mar 2024 10:06:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 457369 invoked by uid 1000); 14 Mar 2024 13:06:29 -0400
Date: Thu, 14 Mar 2024 13:06:29 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Roman Smirnov <r.smirnov@omp.ru>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-kernel@vger.kernel.org, Sergey Shtylyov <s.shtylyov@omp.ru>,
  Karina Yankevich <k.yankevich@omp.ru>, lvc-project@linuxtesting.org,
  stable@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: isd200: fix error checks in isd200_{read,write}_config()
Message-ID: <8819c3a3-fbf1-4df5-9e40-3509ef383b4a@rowland.harvard.edu>
References: <20240314093136.16386-1-r.smirnov@omp.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240314093136.16386-1-r.smirnov@omp.ru>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
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

On Thu, Mar 14, 2024 at 12:31:36PM +0300, Roman Smirnov wrote:
> The expression result >= 0 will be true even if usb_stor_ctrl_transfer()
> returns an error code. It is necessary to compare result with
> USB_STOR_XFER_GOOD.
> 
> Found by Linux Verification Center (linuxtesting.org) with Svace.
> 
> Signed-off-by: Roman Smirnov <r.smirnov@omp.ru>
> Cc: stable@vger.kernel.org
> Reviewed-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> ---

Acked-by: Alan Stern <stern@rowland.harvard.edu>

>  drivers/usb/storage/isd200.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
> index 300aeef160e7..2a1531793820 100644
> --- a/drivers/usb/storage/isd200.c
> +++ b/drivers/usb/storage/isd200.c
> @@ -774,7 +774,7 @@ static int isd200_write_config( struct us_data *us )
>  		(void *) &info->ConfigData, 
>  		sizeof(info->ConfigData));
>  
> -	if (result >= 0) {
> +	if (result == USB_STOR_XFER_GOOD) {
>  		usb_stor_dbg(us, "   ISD200 Config Data was written successfully\n");
>  	} else {
>  		usb_stor_dbg(us, "   Request to write ISD200 Config Data failed!\n");
> @@ -816,7 +816,7 @@ static int isd200_read_config( struct us_data *us )
>  		sizeof(info->ConfigData));
>  
>  
> -	if (result >= 0) {
> +	if (result == USB_STOR_XFER_GOOD) {
>  		usb_stor_dbg(us, "   Retrieved the following ISD200 Config Data:\n");
>  #ifdef CONFIG_USB_STORAGE_DEBUG
>  		isd200_log_config(us, info);
> -- 
> 2.34.1
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8819c3a3-fbf1-4df5-9e40-3509ef383b4a%40rowland.harvard.edu.
