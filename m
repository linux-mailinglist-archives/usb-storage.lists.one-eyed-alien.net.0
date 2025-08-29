Return-Path: <usb-storage+bncBCUJ7YGL3QFBBL6LYXCQMGQEPHEPEVI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id F19FEB3B60C
	for <lists+usb-storage@lfdr.de>; Fri, 29 Aug 2025 10:32:49 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-3235e45b815sf2159875a91.0
        for <lists+usb-storage@lfdr.de>; Fri, 29 Aug 2025 01:32:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1756456368; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZkKiUVyHocjS5xSLvG++4x+Whrt3/y7hVg/XT4HNHeWpW7NcoCFP5mC6U5ZKlirH28
         FcdsLOecABPsalL9FtuRJj9HHFY/363EvaSL0DOCyz72upqGcaEBwMVWp4gFSkdjilWd
         r/IKJlrpvLmD8aRJnVclEQIG0Ke1sMOyBDBmyu8OHnUqZeTNvX0fB/CglrKmaqg/SXe8
         L+lyVTwt2/vYr3H6uqil5clyNB/qF0SYpaid83wD8Mr2WEIL4NDjEly5E4TRjnll1hhq
         aXkR2aeqtKKs8k+w5mYOgJ0AFKQUtJSkRKevn2LisGjrhL9OXWGMNmrdsfk+Pm312DHG
         a1Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ztA6UBtET/Ab9NvuCFgysKdmuxzCfuGPX+FmiQOaSdM=;
        fh=cjn5xncQIlcW31Vx+/wkS77exD+pq8QYSpgEqoGDF1E=;
        b=kePZZe7ve4ZiIxGhavLi0WLc/sbFqYS5z/73NgN7cR0VsT3p39+jxVzmbzuwtQrM1B
         NbMDqoyfQqD251q0eqcK2L5/b3Pi5mkD8xSbiruVYAPTKxjJTXHR23mgNAQzWmyB7NCd
         +6av1DGwFYI8f48WXN0BAJS+5d61iZX89yAXgznzoKG2Mr5dTQce98oGS2lF9usLEn7E
         igWRsx8H/3LBilmw3QB0SDwa9MfufMXE5+Jveax/qF4yw8lWSD1m9hgUU3na1KaZ7GJ1
         bVHah+RBap3VPXDhjRGo5y9lCJOjv9g05eDu+Vo0YNxHzuBnjbThBuiyx+3NG6Leku98
         V/Dw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DGYoVGdV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1756456368; x=1757061168; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ztA6UBtET/Ab9NvuCFgysKdmuxzCfuGPX+FmiQOaSdM=;
        b=bqsEJUdJK0CtNf2tYLYLEUbsvJtSHDRqrn2hw108lqmrP7eURdb6a00XTl8dLTgkwg
         TAbxFmMjWa3La1W+jy7WJUwVmJvW8KY44haK+6j3DVN2oEgqD65YJWgxAn0YAr91hCKC
         ga6d7UbaeCf3M0ixZplRbNEe25T5RiQBD7UaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756456368; x=1757061168;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ztA6UBtET/Ab9NvuCFgysKdmuxzCfuGPX+FmiQOaSdM=;
        b=hbbBPSGKT0o8dA6/tSXXLkOnkwEg2dpvr+VircF0Ui5z7CzvfW1kWrYK+At7/rKtQH
         FwBOZ2SITinN4T7O4TW5q8teL/uqzuRgmijSaMdUonWoGsWwfmkSxxGuQsVaPNPZJSoN
         QibicyLihTuJ9DltcOKPKx9PFaBwLpaMdHEPSRf4i841htdtEd3LE+hVTEHf9NdJdG9i
         jXKtIteoBumwZdq1fGsbG2gSj+MN2QRugeZoNOqEVGMmFXhZaeU0rthD6IMTZH5D58ni
         9JT5fZHMMlnrTOG1DDSTFaj8GK42MRTXnCu8Ni5f7VjW1ozEKBU09WFbNIiLOCgjSyCG
         hXiw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXN+ib0qjOdz09EWsGdP3UUzTDxYI7HD+DhV7dpdtBQ22Ql7+iMMZqvbbJnnBA4SZxLHWKn6w==@lfdr.de
X-Gm-Message-State: AOJu0YxsRiorS980fLZaH1HTT7hMB/GBBML0wnCYb8dO7QKxDdFsx0qE
	IVqCEsjTY6sWAdOEu/2DcwCf9H2GZymd/OqPD0ZzAy6BXmHUbvG+2XB4n3eDLhEWkb8=
X-Google-Smtp-Source: AGHT+IEOnQtZoR+G4zNjJk3gDMyDQfOsg3UmV+y8/3PZV7CUr9NmVlDv0Bfu4nniHeI6VnL+bPuTWg==
X-Received: by 2002:a17:90b:2703:b0:327:7264:f1df with SMTP id 98e67ed59e1d1-3277264f6c8mr11047938a91.31.1756456368306;
        Fri, 29 Aug 2025 01:32:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZdyZSZ/ERATQNznE/OnIHOt0WU0e324mkMFO2HFqVEayg==
Received: by 2002:a17:90a:116:b0:325:c01f:f69 with SMTP id 98e67ed59e1d1-327aacde593ls1620740a91.1.-pod-prod-07-us;
 Fri, 29 Aug 2025 01:32:46 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW0CIVZnm8TOxh3CxqKJrRc4wBNZc42CvwkI+fVTtHHS1iblEJu252Csw1pxLbGnsDf9Ki7OPKZzhUaGw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:4f8e:b0:321:38a:229a with SMTP id 98e67ed59e1d1-32515ee4be2mr36933669a91.7.1756456366370;
        Fri, 29 Aug 2025 01:32:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1756456366; cv=none;
        d=google.com; s=arc-20240605;
        b=RzlHVpYWm7jKmUQ6KKDChQ3gI4c6tpyEOx28Llq19Ie0k3043VwTbq6m+TYYXmktdk
         CWK0j8Yc6ONCjBg/SJgv3Fokj2Zd3Vtc3rEdw8aBBazaUuYFoUkRd3Cw5rVC8KiaZMfX
         sapBLW5DJTu2wLEvUnRKVN2AhiAx3rZsJxZxMnx7cK08HBUysFXE6lKKKmXrxU6cOYZd
         jrTey3Okqws30/86n6e/sx2Lbqe1vGzeXnmpJusIOFs9cjFMA/N1BAEJuZ2IWkbtlxpG
         uG+/gn6VeuaUEgezJPwKJpE6X/prSaMSXnTWahKe5j5g43p60hWxWdppUGk9TGadAVFx
         EXEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oerjZ0oRvx1AWrCcbFW3G58q4MvynwKh5O3ATO83Rqw=;
        fh=B1KjqRTUOKn+kvhtin2+g3OMksvyqw43OMRwPMLyCsc=;
        b=HWIPJDmZxloH820DWhVe3G9TE0FMfvEUVYYhVohp8BcmLNzGCnJZIAKsJK+wcuqpuc
         pxvbYHKrePXK0IrFvvjmaS6vYWCv3HkD8Ei1+brsh30QU2yc7MBYoa104KN0iOXrhXeN
         ad56waD5yDtsFADmo1ts4eyrSn5xnW0qihv7tb/DgAlfJJFdxc5ybZrRSlWJqGVKJDfa
         zpMPm5CCsoJV64Ib7CZBvKgXBluwEWmJ5ane65Hm6B0vBGCFZkY95jizbaqhyHLeP+x0
         qbQY6qlAWwSRNeTiP8/48vb+hVfTmxGlL4f85jYBxT+GgX/ru7b1Etysnb/kLhvOmHC2
         sPYA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DGYoVGdV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [172.234.252.31])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b4cd3c4650csi1227863a12.1152.2025.08.29.01.32.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 01:32:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) client-ip=172.234.252.31;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0437B40B46;
	Fri, 29 Aug 2025 08:32:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68007C4CEF0;
	Fri, 29 Aug 2025 08:32:45 +0000 (UTC)
Date: Fri, 29 Aug 2025 10:32:42 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Thorsten Blum <thorsten.blum@linux.dev>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH RESEND] usb: storage: realtek_cr: Simplify
 residue calculation in rts51x_bulk_transport()
Message-ID: <2025082913-expire-crazed-bee1@gregkh>
References: <20250828162623.4840-3-thorsten.blum@linux.dev>
 <2025082922-almanac-derby-632d@gregkh>
 <7B58E620-723A-41D3-9EA2-81159009A818@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <7B58E620-723A-41D3-9EA2-81159009A818@linux.dev>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=DGYoVGdV;       spf=pass
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

On Fri, Aug 29, 2025 at 09:10:00AM +0200, Thorsten Blum wrote:
> On 29. Aug 2025, at 06:34, Greg Kroah-Hartman wrote:
> > On Thu, Aug 28, 2025 at 06:26:24PM +0200, Thorsten Blum wrote:
> >> Simplify the calculation of 'residue' in rts51x_bulk_transport() and
> >> avoid unnecessarily reassigning 'residue' to itself.
> >> 
> >> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> >> Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
> >> ---
> > Why is this a RESEND?  What happened to the first one?
> 
> This was patch 2/3 of a patch series that doesn't apply anymore because
> you asked me to submit the bugfix in patch 3/3 separately [1].
> 
> Since the series doesn't apply anymore and patch 1/3 didn't get any
> support [2], I figured it's best to resend this one as a separate patch.
> 
> Thanks,
> Thorsten
> 
> [1] https://lore.kernel.org/lkml/2025081358-posted-ritzy-bd3f@gregkh/
> [2] https://lore.kernel.org/lkml/20250813101249.158270-2-thorsten.blum@linux.dev/
> 

Ah, that's better, you should have put that below the --- line to make
it more obvious as I didn't remember that at all :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025082913-expire-crazed-bee1%40gregkh.
