Return-Path: <usb-storage+bncBCUJ7YGL3QFBBE6MZ2UQMGQERKW3ZFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A127D1C81
	for <lists+usb-storage@lfdr.de>; Sat, 21 Oct 2023 12:21:09 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id d2e1a72fcca58-6936a25f49bsf1551595b3a.1
        for <lists+usb-storage@lfdr.de>; Sat, 21 Oct 2023 03:21:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697883668; cv=pass;
        d=google.com; s=arc-20160816;
        b=lJs1DbdzEdPRYzl2J4VvbB6vObLiloVQIxGF6D3ZGwJTRZVMFHdCopxiKs2Vs613O2
         lMVkV9Jmo1czdtgzCr1tIrnPo0w6iTfJQsmSzFwmDqj7HEnLd0XtDEI+8QeZOMAeyL7E
         7K1ReAFB+SLuYf3rtxxh+WW5+Z9q1049XZsCc6/GkPof+TDjmvmYB6+y3V7Ubnfpw7Da
         pxGbfhlx3u55ox5FGhSmtVdmcYlmokg4Swp9ROEk0FemC3sntZf9OZapcUihTsJB/l4t
         s6+mNEYgL55d75UAzNMEcXkDV+H4gl0vlwFv+F51rcz5Jl2S/gcfNM7HCEmIe91CbccK
         XkCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0Mvdfb/OwYT6q+5P/9YJNf87FoCL2DR/ZxP7ucYa21I=;
        fh=t3EXWi4An44bWHv2uIUWbfMUE7Qrvf5xp9ayieGzRpk=;
        b=yKVHPDeMTykc2Zr4f9TbPurcgzxH5iqVtS8/UlZ8nGM/t/LSVoCuoaXRx+Pip4jX9V
         DWghP0mhx9E/bTuf247t1zXOozol1mqjV7kMNAlzFOgyfyDFqb754Q8AhV1E+7a5+8Y4
         1YKnDdDt8uFAxCsCOYy0aBMX3dsX6HQisUY3G7EMaekTHrzfQdixiSOut1teJ2p/7B+h
         5Gjy+ZqzenD6iqqCIpIgjfICPCo9Csp9K6o33DeoJix6mL9yeyCHK6U/u4IRLsjpVZYK
         f38ng1ddhbhm1cSsmkdsfpTY713jtnJa+qvo0fOp3Iuye3BUvScSNGnWiklpnSg/VIEL
         KvxQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=J6zqJGJi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697883668; x=1698488468; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Mvdfb/OwYT6q+5P/9YJNf87FoCL2DR/ZxP7ucYa21I=;
        b=EK+UeTbKnqm9SfhghsH0OqQuFjNvM0so24oyEu+1QG3hp8n4LP3PqxZebHD0rw8bHd
         ZDdgxgsihMroZ+9LZFiPFFPtySXtgCiGGOHzVt8GrjcUzkQdSB3Q3xh6EgZSgiqxsd9z
         +FUNPSbeYgLh7PKXGI/7KC1BdHsmeNUfgUwFQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697883668; x=1698488468;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Mvdfb/OwYT6q+5P/9YJNf87FoCL2DR/ZxP7ucYa21I=;
        b=i5Cb8+2luSvZArABWOzbvCo9rjkQlU6LlUqrkYJRsFMnWw8yjL559Re8HLBTPAUXAg
         2OXHQgbja/5OtUtIxKGcGkdG63f+HPq/eUxbPJB4V3wjL5TUXkpuNZGizG/snE5aGJLp
         3rhSPajS/hkLs7j8+MAKAqE6R0BZVb8WN781Oqmid3Lj0kqLvGq3MrhUMeKB1uwZd5wv
         HHAP0Kj44zpjh8gBmysQGUO75dDklRGjU3MaJr2FdJYnA3ze6yFoAdO6eDzbinPNmIRK
         ItSNtcLu3HfyqXOFE+9WrLiiR/uN4LLZwJn1tFvtJPh6eman8uk1sBc81MywRUiHO2/P
         J4AQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YxAq8a6qi25QZnoEwqhOdW4XVI+WNROAUN1wAQB1lmas//gyn/a
	fVSqm+h1pHKlU16yU4hZPaAPdw==
X-Google-Smtp-Source: AGHT+IGBVtRRSj0YYxMkKTdDhv8qgdPv37knjBH4Agn6JKIGfUv/mrMC+JE6uzrJc0/JacHnaFVQDQ==
X-Received: by 2002:a05:6a00:853:b0:6be:b79:eca with SMTP id q19-20020a056a00085300b006be0b790ecamr4873960pfk.32.1697883667628;
        Sat, 21 Oct 2023 03:21:07 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:2288:b0:68a:4b97:7cd3 with SMTP id
 f8-20020a056a00228800b0068a4b977cd3ls1266525pfe.1.-pod-prod-08-us; Sat, 21
 Oct 2023 03:21:06 -0700 (PDT)
X-Received: by 2002:a05:6a00:2482:b0:6be:130a:22a0 with SMTP id c2-20020a056a00248200b006be130a22a0mr4417984pfv.14.1697883666469;
        Sat, 21 Oct 2023 03:21:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697883666; cv=none;
        d=google.com; s=arc-20160816;
        b=GRLvqixzeIc137kQpfWJJ6lUHzZrCZ3QylxKOy+egad1rBCp5H5XzhUquLQhfda01X
         uHfeO0jn1CiPDAHySlDjuz7ZDO+y2AKiQFzfmH7JaEPuOnEZHNeM50trCFF95YCYJgxg
         t8zO/WraaF6/NpTF/NvQANKEaHn/m4cWYOnzmK4fPxTDJ8iQPky2hFqf+furULoxfKsM
         3GNt9DDsRjhUEUIL1gNYus9z+bYBg0wCiBJlWbEcIFIHzIQzFBgGPdcL/BIi9/kVZMWA
         rXsbbvtQ+FahVweGMiHnpQ65evOcxajgXcdGhNuc0WG8JCoUUIim16bxB9yClVwFf3nE
         2OkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/vpKerXRE9DD7RFW214WawxlYhLCJP5ctaSq/3sye4E=;
        fh=t3EXWi4An44bWHv2uIUWbfMUE7Qrvf5xp9ayieGzRpk=;
        b=esP5rdYqpB8z9tQKcEYH9lk4C9Yp1GuJPkiigtNGAj+dPTkeWJsFrVJEdQMvxM791G
         Jl9UoJatHKvP51lJ4+eYB6El2fiwzKtWSjjkTEgd+c40kuM/f6KCcK9wQG11gAnytjLC
         +xfjWzx30Yplm9/08bmk4PAOKbtpIyp0MIRNZJESnXYAmMPNbQjmUmeVyxAC0oYvYM54
         esQKZNwlGwXtc9zaEiH3AL+6T9PoZrxpcJNVkzM7VPVHOfRpuBnqbG6TotQfJr3ljUxn
         8VxRvuXaI/DKTahPdZArYC2MlG4rSMJgCnPWIT0XvsC5QqW1KP3rlyiRsrtBQjQXtfDp
         5gqg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=J6zqJGJi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id s10-20020a056a00194a00b0069342cee042si3618205pfk.51.2023.10.21.03.21.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 03:21:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CD22FCE12C3;
	Sat, 21 Oct 2023 10:21:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAE64C433CA;
	Sat, 21 Oct 2023 10:21:03 +0000 (UTC)
Date: Sat, 21 Oct 2023 12:21:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org, stern@rowland.harvard.edu,
	oneukum@suse.com
Subject: [usb-storage] Re: [PATCH 3/7] usb-storage: use fflags index only in
 usb-storage driver
Message-ID: <2023102125-lived-clause-66ad@gregkh>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
 <20231016072604.40179-4-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231016072604.40179-4-gmazyland@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=J6zqJGJi;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Mon, Oct 16, 2023 at 09:26:00AM +0200, Milan Broz wrote:
> This patch adds a parameter to use driver_info translation function
> (which will be defined in the following patch).
> 
> Only USB storage driver will use it, as other drivers do not need
> more than 32-bit quirk flags.

Then this really should be renamed to be something else.

Having a parameter be "0" means we have to go and look up the function
and see what it does and why everyone is passing 0 to it.

Make a "wrapper" function, and rename it to be something sane that does
not need the extra option, and then for the one place you do need it,
use a different function name and then both call the real function.

Does that makes sense?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2023102125-lived-clause-66ad%40gregkh.
