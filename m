Return-Path: <usb-storage+bncBAABBAH53P6AKGQEBRIWVJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com [IPv6:2607:f8b0:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BD92992F2
	for <lists+usb-storage@lfdr.de>; Mon, 26 Oct 2020 17:51:13 +0100 (CET)
Received: by mail-ot1-x345.google.com with SMTP id e6sf3662380otk.13
        for <lists+usb-storage@lfdr.de>; Mon, 26 Oct 2020 09:51:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603731073; cv=pass;
        d=google.com; s=arc-20160816;
        b=jGh9nrPb8QZZnZBej2kMZsmitQn0IKtPuYAAku9rkfx+1DJoo+6xmITeyQR+ZM9HMK
         60NyQdpzJbQahefhERlYFGHZoSAI8p4QqvR99DyLn+zaUJuNiHtNbbvxlJgVRe3lftlo
         ElJPmhyFFKQBQyVxQV/a+TFhfAqiJC5bVbxZ3NkRnTAuUJ7f8/pFoc9vp+FBcYjkZe+V
         ac0+P4Jh1mi8dQ5SwD0HoeGzaz2zWf7ohT0cz3dSWMXvVmB4pIvf0dQZdki0xsAU2m7r
         HxWhq24CLdJkfo2ni0/qfNCwxx0gXvXZv8w61ihDC7tnXdsiqRwkyUMJ7HP2ZnOL0kxM
         syIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=y8S3sZSvr+ct9xjOwvDaReu/d3I0NCFvuAvHjB6RWN8=;
        b=cEPQers2j+2F20XMlj/64KIgBfHwsCG/puEFtRaWPI5NA6pFF0/zwOWn9OvzfUooGP
         QanzEOZlzaIpL6vlQd6WS764J4jJA6rCxXK4wg7tpfyopVLpPqOtj3M5rBnAM1kjaHss
         ukXIgnQMMcbRbmJPWYcxK89U0kHpiRQg2OMOBcm3Ihy5T39BM7090QDxq6DbIfD8qpqd
         bHpAtZGKUE0s2SMoSZ7BpgnmYDIF5+k4YVzm+2r3z6/62fSCqE2/1QkUIMmmMSxpmHLh
         qRj4IJ+by4LTAbcWB736w/4iapGPqajLNUZERDfE5xeO9xouI2ySC+NKaapAm9+N54fv
         ktSg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of mathias.nyman@linux.intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=mathias.nyman@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :autocrypt:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y8S3sZSvr+ct9xjOwvDaReu/d3I0NCFvuAvHjB6RWN8=;
        b=jeCzhj8QCHsAhtGl1YuknIWuPQ0/ufD9ET4R6OSaapeY1j3UqikRR2irKfHBYpFudl
         IWlCZuZPOuMBagAphd3iNdI3e90guE8dVyEVNyO3NqURMyrzIEOoUH3z+t65yKBQprSK
         27qxAynpS7vKx6bJZ0JYQteYWTe6fDJCgibsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:autocrypt:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y8S3sZSvr+ct9xjOwvDaReu/d3I0NCFvuAvHjB6RWN8=;
        b=W4Bx/OLZ/Wb3m5ScgVmVNI0fdoEX9eKQrXo3q/2N8eOVqm/eL22Z3MeS3z4BaoXtBq
         jjOhhTGdkJBDnHE512mV26Ex4ZqIfhuAeeUZnlnP6UZ5CZUNNkFEs+S8HUPq+jjM9dsP
         zD5yudNtaNHWel76SVUj2QsLkbBi4cMR53YXHY0G1hFpmGwVl69BY5ItIHHAiQtbFTdS
         QZAbR4Ok/j1oSYbh43WTobBpBqTqCbR1Sh7Qp3ein0oXcsJhvJSqM1L0mRJauCExE8qW
         giBQkfKdGFYYfhn4gCk0ippaafw5WhVX4pgCXPeeexgL2SBkQK/QEV9hq31k4m4pLrlP
         pdbA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533om4EACLx17cLSx6u8aEUX14QWlQen7FQ+jL65w4GwtRkOOxVK
	QrbNyOowAzRzh/t4x9duK7/VAA==
X-Google-Smtp-Source: ABdhPJzWpdlockSXT8ogpZ4yeOTDM4lYblfCXEg+iC8LK/aksWjKEsbEeO7qLQ5lGQpaHzLvCVI3dg==
X-Received: by 2002:a9d:6946:: with SMTP id p6mr11441657oto.351.1603731072797;
        Mon, 26 Oct 2020 09:51:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:13d8:: with SMTP id e24ls1275887otq.11.gmail; Mon,
 26 Oct 2020 09:51:12 -0700 (PDT)
X-Received: by 2002:a9d:10c:: with SMTP id 12mr6762963otu.95.1603731072397;
        Mon, 26 Oct 2020 09:51:12 -0700 (PDT)
Received: by 2002:a05:6808:157:b029:e2:2af2:9cd5 with SMTP id h23-20020a0568080157b02900e22af29cd5msoie;
        Mon, 26 Oct 2020 07:22:22 -0700 (PDT)
X-Received: by 2002:a65:4c05:: with SMTP id u5mr16530256pgq.93.1603722142486;
        Mon, 26 Oct 2020 07:22:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603722142; cv=none;
        d=google.com; s=arc-20160816;
        b=pU7Bz0zqbTb0ryO+10o2HvoSj6ZSyBgyKPWCIriWch5+tz2u6xM5TYj8VqYC0M1Vao
         hz2Z7Xuwb4LG+XW5uhL/oizgAbYClCvR/Rs3g8qt0eb4WVF4tvdj8bK6BfgqVN0OKmNK
         BXirccs4wS69h47LtUx5jqxBvm0Me7LjpccgUiD4NMXrPh7zrAQ1/ywDlYS32zV02U8O
         m7FCcBOmJLyTW4rtLFpO+zDIRHK4jrYk205hV1Q2cfkwZ9OqCfLptYFh1tW1lPF4IYKR
         53cA2j3IdCMv5/P9OQi1uXI8genszC8dyxqJefSOzDCJnPYw45H5JmY6WBf5wTFA/v/d
         pNyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=VQIhEuQPJsSbD4FJIdaKdPqn1tntjpgcXUVvI2ve+oY=;
        b=bbjgZHsbDTehDobPSmcan0fELoWJ6iRzs1mhXrCKNZd2F7YpKz7np/dVcmXp5YktsJ
         QfPzuk2GSfllOX6GBuqNRf2LqVHXpo69HAoiUhGrC3a05Zks7GYeA2lPgz8fYCv+8PGo
         JvtJUqm6HATdp/Jw2BvGcMhm1t3wV6+nx3zMFEX9qtKPYU56cmlRIrTkxc+T1tBXnX6f
         XOc03EcXbBTb9OqhKrNIsVIEIoKcDwnzqHEXYCHLfpV5Q3uhvRO+tHCT8Jcnl7Q3aFbS
         dHo1Jp8zxC62lR1kDY26O+dwfKv8bm7joRwIAIyXnxAq9WwuedBaK5il9pA12Y4zuGYp
         jCSA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of mathias.nyman@linux.intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=mathias.nyman@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by mx.google.com with ESMTPS id e3si10580845pgk.260.2020.10.26.07.22.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 07:22:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of mathias.nyman@linux.intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: PU43vPyXPmYtwPnyJ4ohZvwlU/7PoTKZ4JUTLpe97mVkofGITxC5WML/SOT/0blAbIo/J6wRbt
 98lX7bgUhmVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9785"; a="168053729"
X-IronPort-AV: E=Sophos;i="5.77,419,1596524400"; 
   d="scan'208";a="168053729"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2020 07:22:21 -0700
IronPort-SDR: zx/ut50ICtaU6P7xooH9x7iTUdM05LLmQswxh9qX7+rEM7BI64wCqazhLSfOmolsnyTLTO3OVK
 CzdsByKKeh+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,419,1596524400"; 
   d="scan'208";a="467941137"
Received: from mattu-haswell.fi.intel.com (HELO [10.237.72.170]) ([10.237.72.170])
  by orsmga004.jf.intel.com with ESMTP; 26 Oct 2020 07:22:18 -0700
Subject: [usb-storage] Re: [PATCH] usb: remove unneeded break
To: trix@redhat.com, balbi@kernel.org, gregkh@linuxfoundation.org,
 mathias.nyman@intel.com, johan@kernel.org, stern@rowland.harvard.edu,
 gustavoars@kernel.org, viro@zeniv.linux.org.uk, lee.jones@linaro.org
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20201019150202.19713-1-trix@redhat.com>
From: Mathias Nyman <mathias.nyman@linux.intel.com>
Autocrypt: addr=mathias.nyman@linux.intel.com; prefer-encrypt=mutual; keydata=
 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 fiD/
Message-ID: <845e43b3-1c53-3eed-b540-4efa109f33a9@linux.intel.com>
Date: Mon, 26 Oct 2020 16:23:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201019150202.19713-1-trix@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: mathias.nyman@linux.intel.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of mathias.nyman@linux.intel.com designates
 134.134.136.24 as permitted sender) smtp.mailfrom=mathias.nyman@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On 19.10.2020 18.02, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> A break is not needed if it is preceded by a return or goto
> 
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/usb/gadget/function/f_hid.c | 9 ---------
>  drivers/usb/host/xhci-mem.c         | 1 -
>  drivers/usb/misc/iowarrior.c        | 3 ---
>  drivers/usb/serial/iuu_phoenix.c    | 2 --
>  drivers/usb/storage/freecom.c       | 1 -
>  5 files changed, 16 deletions(-)

Would probably be better to split this into several patches.
The xhci change looks good (as a separate patch)

-Mathias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/845e43b3-1c53-3eed-b540-4efa109f33a9%40linux.intel.com.
