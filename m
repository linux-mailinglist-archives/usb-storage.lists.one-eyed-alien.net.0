Return-Path: <usb-storage+bncBCUJ7YGL3QFBBJ5P7DCAMGQERF2MEDQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id A916FB26D43
	for <lists+usb-storage@lfdr.de>; Thu, 14 Aug 2025 19:06:54 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id d2e1a72fcca58-76e2ea91aa9sf1784498b3a.2
        for <lists+usb-storage@lfdr.de>; Thu, 14 Aug 2025 10:06:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755191208; cv=pass;
        d=google.com; s=arc-20240605;
        b=TCDPmGaQbJHDe58b3mD2JCVItlFAEvjqrC4K03dQzvsgpZqasWG6tGQKPFhm0S1znS
         Ggej5AkFL5CwxR9nI0e3TNGcuGBTGRstXduwmSpCO4Z0wHO1KFafElUVANZ0i6TeKfgK
         rRNTv7Ql4pJ4k9j+Cj/9oDGtJlJnp3XikMyO1NwDV/eNRNUBPd94xId/gWZYRDD+WZ7M
         5DbAkfjtCPx9cJdYoqA63EBJHcuYAvWr4oHm1dK8ZtJx1FrOx/j7/K7aZHNR9T8Jms8c
         /jgLnjhvHLf4RwkcurMz6ubrGnyhAoLEu1+jWxUcIMJjZR12jz4WLNOZsDiBz3NUxF+7
         VGoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=T0A1JzffmaYQeJJByXuNfVfcFEVLdUeIReVUfjcjsic=;
        fh=i/FD+uUblbgnnpqRcuLkIvDF/nIc4gZj5Q/q0QssEOI=;
        b=Kv2AuNh71aTlNgryoRwyjyla4UC1OhEUDLbKfxe91+QOxh5TXcJjzj4MgTAMg1CKF3
         b2fKwcJjGAZsNYj37hXReUDKxJMclR6nbsWhnRQq5VUOS5ku/MGHi/OjH1NHsdktrjyK
         EHtTRRXId6sdUCAVMHghvKTLADRbwG3TtTRUq75jKCVvhmeIsKnAHTwqoSdq2recXSxG
         kJ6bkOkF0yK24AkE3C6juR305Uzy+NNcQTtMh8z5YeHb4yvmKStiIGeOFzQ0sG9CBlyR
         13wNTqs3/LUOgAzAnnAj+6UjmRlxdYyYzwrro2oHSwoZmV63CHJCtgZIB1TgnHiREvEn
         TEsQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=R2sbObHT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755191208; x=1755796008; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T0A1JzffmaYQeJJByXuNfVfcFEVLdUeIReVUfjcjsic=;
        b=U/G2FYGboMq+8jFZhpo5eYHa8KCdYzpiNbiIMqCN0yG37lMqmHVtYMaJenTdPIR+Hc
         vvubcBWr0OfskN/8VdZ7N+vmwljs54SRsqqamx5+Fif3FRvGDCgOhcbGm6qYwVSgfPLH
         a+94pmo7s1VzDXsVFoqe9glf8RAVE6ggvIDM8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755191208; x=1755796008;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T0A1JzffmaYQeJJByXuNfVfcFEVLdUeIReVUfjcjsic=;
        b=nDpiXX7HucQuAs0XriBUgC8/MbRJIam0PHsYFGU5UNOrq7a2Bmz2q0RgqUxnp5DcMW
         6Gs88Kg7ns0iojBfOHeD2pIaLWwUHmc3RjYFtY9IDLgyxc7hUEtekexo6twv7zC3ZS29
         yuD8ByPvXJQ8gTDg60W/QXNngGqBMClARkmpkOF9tCKYer8iHF/FaEq+ly7tVK1azbvh
         z9A5fNlozKd3IZ1gyiI08mBzKato7TziHCjykre7JSay0nK8dyS1NPt7RoJXrJnoXoav
         Oj+8b6D77YZvP4MRF8iciwDVKA8AMvFL0oHw8h3xARU+Pq9BcgJ33V2G12ojbv0XRhia
         2ahg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXmPrx9xAOw+1gTYF7D8zv1HrWvXxI+AaWDmgOBvk6HDzMA2E5fk5YqbTfvW/XBE0sQmatkng==@lfdr.de
X-Gm-Message-State: AOJu0YxctbIFmraZj3AeFwrBSpRZ4nwNoqB7AxMnBGNGgpNDPhWZj8oa
	ivezywEPS3aW0Npj3ZZPs0MijUPnbBKezdKt8ElRWHbuffFmsACvMQ3MQkVyRk+JRp4=
X-Google-Smtp-Source: AGHT+IE90bzfmExqSKMS7zVXaFZkUel4wIKtXrUuM6eR8PjNZxkxUczb/pMgkCX8o1mHOKdwl8G2eg==
X-Received: by 2002:a05:6a00:1883:b0:76b:ef8f:c277 with SMTP id d2e1a72fcca58-76e2fd0f872mr5979601b3a.11.1755191207502;
        Thu, 14 Aug 2025 10:06:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZfHpbeU+5MHET7268EphiLtDeRgKyYDuH/1NA4C1xx8bg==
Received: by 2002:a05:6a00:1996:b0:730:8b18:e9ff with SMTP id
 d2e1a72fcca58-76e2e3ca5f3ls1362200b3a.0.-pod-prod-06-us; Thu, 14 Aug 2025
 10:06:46 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWRG67HRS1BLK0+028OIVEWIluSQ8klQbdXHcxfwk3N2HFNXt4dnjOIyHbxUUaTJePnT1oFuPPe8hV0YA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:1594:b0:1f5:9024:3254 with SMTP id adf61e73a8af0-240bcfbb911mr5908732637.6.1755191205898;
        Thu, 14 Aug 2025 10:06:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755191205; cv=none;
        d=google.com; s=arc-20240605;
        b=Q4aq3TaSm7wNo8Vrd1DYUle4V1BbXzNs+E0rD79wVuyReg83c5lljRW63CEhTKE9G3
         yykBL/FeC+8WpMlgY1HmftNCkJOm7i3sIWo7YdyYp1SSzHonhpncBJclOslmmU5v31rS
         HrWa6VARoKDttsN3Bd2fDF5ENTvZEln1FHeZurSqX0eKyU4Ub0OnqicsgUQx/vb6PJKc
         ebphoJscZQF/dgtBucKKhYTzRD2FhSqh2/V+qDxREZTnFmI5VHlCzxoecW8j4f1WlSgk
         TYY7Q21brhkmhafhEpDK1Jfeiu+7tAXHhczMcYscAz16mAmGdKQb8k7XoYwBKEl73Eww
         CqLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fGlgMDdRyx3VddT1ya+240bialcOzVnyDWxakkv6bRI=;
        fh=ko8C0J1WGt8MBILj4VpsAyQTGOiROM2+p1QEP7G+eho=;
        b=KbbRAw9BPAe2ki407TsVoUpyclcKlPuovFKNWRkj0RwCczGqxG6pM2CizGtQM8fyg/
         ZGIBqKQMrkVxhyuaV59SrHkHDHo/AW6kJ06oAXiEt30gIk8EVLqvmaFkNBA9vCthDhqq
         8/GzTHhpwblfNZtNJV5Np60OEoPYkOwiwdHh272b/eG91oBiXbS7hgZhmtmZUHAG2Y6r
         5uVsUxhK+qH+bG10o2rQjFYLW/op2MSVkJEO2c1aZxww05GrBGa3ssPzQ6vX0AtE76B+
         ZkuNJq3NUOhuUVkS5oKwJrCse2LbLvM0A/EaLZNfMCUbm1U4iafQhd62dOPSxRNLn4pW
         QxYw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=R2sbObHT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [172.234.252.31])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b471963b5d2si1250387a12.1747.2025.08.14.10.06.45
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 10:06:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) client-ip=172.234.252.31;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4CA14457F0;
	Thu, 14 Aug 2025 17:06:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B07FDC4CEED;
	Thu, 14 Aug 2025 17:06:44 +0000 (UTC)
Date: Thu, 14 Aug 2025 19:06:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Zenm Chen <zenmchen@gmail.com>, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, pkshih@realtek.com,
	rtl8821cerfe2@gmail.com, stable@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, usbwifi2024@gmail.com
Subject: Re: [usb-storage] Re: [PATCH] USB: storage: Ignore driver CD mode for
 Realtek multi-mode Wi-Fi dongles
Message-ID: <2025081428-unfold-shakily-6278@gregkh>
References: <03d4c721-f96d-4ace-b01e-c7adef150209@rowland.harvard.edu>
 <20250814140329.2170-1-zenmchen@gmail.com>
 <b938a764-6ded-4b76-a15c-82c0062abf42@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <b938a764-6ded-4b76-a15c-82c0062abf42@rowland.harvard.edu>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=R2sbObHT;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Aug 14, 2025 at 12:21:16PM -0400, Alan Stern wrote:
> On Thu, Aug 14, 2025 at 10:03:29PM +0800, Zenm Chen wrote:
> > > Also, can you collect a usbmon trace showing what happens when the dongle is plugged in?
> > 
> > Hi Alan,
> > 
> > Today I removed usb_modeswitch from my system and grabbed some data, could you please take
> > a look what was wrong? many thanks!
> 
> Yes, this shows the problem.  I'll skip the unimportant stuff below.
> 
> > D-Link AX9U
> 
> ...
> 
> > ffff8ae1f0bee000 771359614 S Bo:2:053:5 -115 31 = 55534243 0a000000 08000000 80000a25 00000000 00000000 00000000 000000
> > ffff8ae1f0bee000 771359684 C Bo:2:053:5 0 31 >
> > ffff8ae1b52d83c0 771359702 S Bi:2:053:4 -115 8 <
> > ffff8ae1b52d83c0 771359812 C Bi:2:053:4 0 8 = 00007bff 00000200
> > ffff8ae1f0bee000 771359853 S Bi:2:053:4 -115 13 <
> > ffff8ae1f0bee000 771359935 C Bi:2:053:4 0 13 = 55534253 0a000000 00000000 00
> 
> This is a READ CAPACITY(10) command.  It asks the device for the number
> of data blocks it contains and the size of each block.  The reply says
> there are 31744 blocks each containing 512 bytes (which is unheard-of
> for CDs; they virtually always have 2048 bytes per block).
> 
> ...
> 
> > ffff8ae1f0bee000 771366235 S Bo:2:053:5 -115 31 = 55534243 17000000 0c000000 00000615 1000000c 00000000 00000000 000000
> > ffff8ae1f0bee000 771366306 C Bo:2:053:5 0 31 >
> > ffff8ae218ff2900 771366317 S Bo:2:053:5 -115 12 = 00000008 00000000 00000800
> > ffff8ae218ff2900 771366432 C Bo:2:053:5 0 12 >
> > ffff8ae1f0bee000 771366443 S Bi:2:053:4 -115 13 <
> > ffff8ae1f0bee000 771366556 C Bi:2:053:4 0 13 = 55534253 17000000 0c000000 01
> 
> This is a MODE SELECT(6) command.  This one tells the device to change
> the block size to 2048.  The device responds with an error indication.
> 
> > ffff8ae1f0bee000 771366567 S Bo:2:053:5 -115 31 = 55534243 18000000 12000000 80000603 00000012 00000000 00000000 000000
> > ffff8ae1f0bee000 801899370 C Bo:2:053:5 -104 0
> 
> This is a REQUEST SENSE command; it asks the device to report the
> details of the error condition from the previous command.  But the
> device doesn't reply and the command times out.  From this point on,
> the trace shows nothing but repeated resets.  They don't help and the
> device appears to be dead.
> 
> I don't know of any reasonable way to tell the kernel not to send that
> MODE SELECT(6) command.
> 
> The log for the Mercury is generally similar although the details are
> different.  Everything works okay until the computer sends a command
> that the device doesn't like.  At that point the device dies and
> resets don't revive it.
> 
> So it does indeed look like there is no alternative to making
> usb-storage ignore the devices.
> 
> Greg, do you still have the original patch email that started this 
> thread?  You can add:
> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>

Thanks, I have it somewhere, I'll dig it up and apply it.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025081428-unfold-shakily-6278%40gregkh.
