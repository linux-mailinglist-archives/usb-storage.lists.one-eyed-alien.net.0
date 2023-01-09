Return-Path: <usb-storage+bncBD6LRVPZ6YGRBVPO6COQMGQEVMQNVDA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ua1-x946.google.com (mail-ua1-x946.google.com [IPv6:2607:f8b0:4864:20::946])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E98662A7D
	for <lists+usb-storage@lfdr.de>; Mon,  9 Jan 2023 16:48:38 +0100 (CET)
Received: by mail-ua1-x946.google.com with SMTP id o43-20020ab0596e000000b0038421e4c7desf4483298uad.19
        for <lists+usb-storage@lfdr.de>; Mon, 09 Jan 2023 07:48:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673279317; cv=pass;
        d=google.com; s=arc-20160816;
        b=HZlsU1ea8F+6Ex2+WgBMKxpR/DgTuVt5ve6T/5KR22kpMII2JHO+irGR7NYDPegX/5
         y7x1LR4g79WpAYGwfvfPK6UQQEMVu5B+YPQ2KdyO0K0UiRYb/B1wTKcI7o7PBKRYWH50
         yis+dVkVpr+U0SkKmZRAfMKFZPpa298t1qe9Dw4Fg4EiygU9pY36fgt5ZprUhnxeT0xC
         SHZtX7CCo1trgdF1UGR4B+i5TK7WBYOfQPreBoxHCaWZGrhskSE5Q+3hTzck2TmlZIuV
         UEf2kWGZ9mLLZNqT0cR1wiF+F4z7lZho83WrVRhs/8yuzPS7yfn1YY0eXQRfVFSyRz0j
         UtaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SzvdLdAHPFBP/g5zt/eTPzk9LAtJF+hUKg3TztsGiQU=;
        b=JeWEsOzyVfrgDrjZJZ0AnMkX32QwfdgVS+j+XNU7OqI/vrQtmaW75YvQZKPD6BUA2B
         Zaj8NU7scOK/VDyS7+EWYs8rD5WtCUgNsp5yPpTDRZ1/6kvJUYlo7ZX9gy1MLaAD9q1t
         jyTx2etQ4qznSd+uIpFa1uZ2KTBqgljB2CxsgZiNjhAV59J++K28KpjKDvPUPN62tbEP
         6S29aafQco5pGIruJMznMVxWnP6XtMFzy1NHCzQ6yk95ehW8RUSl9nDKaA6xcBfI2zGY
         RnCwmyY2OYVD4W3aB3s0vhfaU1bRRF2SY4Htu2Z29FeP7RZ5zlbd4uG9EiNzH6oYqL8t
         ODsA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+63b52f56@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+63b52f56@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SzvdLdAHPFBP/g5zt/eTPzk9LAtJF+hUKg3TztsGiQU=;
        b=iCnlLn+LcR0J6Ab5+VvcadopLy+Kdk0R5sWZsZciZYm2Mcr6s5mmRuz/s53upe/sax
         J4XxVgKVto3qHTOJDUafm0JYKfHH0v4IQDfIXy1CQ+FCtaF0JOxQ1wRJmffwaIBWOQgp
         bfd2mW6WBU6H9OxqrMw+zdGe6zJIRnrs1lhSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SzvdLdAHPFBP/g5zt/eTPzk9LAtJF+hUKg3TztsGiQU=;
        b=voX+xZmrdY7enXDTHjwfJDHyXoLNANWOEVrdPtRgTEe3vH+2VZ38y+uiI9g6ScnXM7
         TRtoL13XNhSWqCJt2eT2v5/v/2b4bmT0EyV+x0a3Q3k73SFgSvHO0UuPA9FF93tn/XYM
         mufpHbDsGrqKQa8S+IDeVMAq/n20EYWgl2MLRyZRuaMXzNpKsY22YLPHBpC++T/9zj64
         D472Y01O3XOzephb9An13Cr9lKKdppfKnRkj7fZpaFuhjx9U8ymN8SWLvfWKzo5ebtjS
         lCKH77AW3S4CQpTrCAL4F6f9D5m903OjAeHvNMB31xF6rYU0uxSlbXWl8FSabHXLywEe
         m+Nw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AFqh2kr8l517Ny5ICu+VY6RdBiNcaHYU3r52dWZZlDhQELmfOlpnSuxX
	sKf7sWoYM/OQC1tpHZfnmPkEqA==
X-Google-Smtp-Source: AMrXdXsTwyl6Wieo8Csem6Xg27KIBTJuE0jpOvPKw7faYY8rLrUiHsaok5xc9UprPLz8R0Fgie51RQ==
X-Received: by 2002:a67:8c44:0:b0:3bc:ae4f:1abb with SMTP id o65-20020a678c44000000b003bcae4f1abbmr9679428vsd.20.1673279317701;
        Mon, 09 Jan 2023 07:48:37 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1f:1d8c:0:b0:3bc:95bf:a044 with SMTP id d134-20020a1f1d8c000000b003bc95bfa044ls803270vkd.9.-pod-prod-gmail;
 Mon, 09 Jan 2023 07:48:35 -0800 (PST)
X-Received: by 2002:a1f:2691:0:b0:3bd:3a31:d74e with SMTP id m139-20020a1f2691000000b003bd3a31d74emr25781636vkm.1.1673279314919;
        Mon, 09 Jan 2023 07:48:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673279314; cv=none;
        d=google.com; s=arc-20160816;
        b=M2F1QHfUuS+kaHayXhYXxFyxb5qJPUWPOP9O2GaQ1YRma4qDb7wB1CtruwsPppQt8u
         joTORsDBmMngeSJiOYY73abCJSV6JsR/co/yI9hbZmqhtl8NAgmRPSA4wDP+aSC9orlY
         1gVHWBoDVUZOjM9sQYHPpg7n24qd+rFG8mrLLLdLEInbomGujVdVT7G0/O0LUVGkskCn
         3YCCVk6S6HySIOwZhpJ+zAyhv52sig6XmB+gqvd/XeMnCiF+6bunSWlqkE9H7l1RsOGU
         ywvey7hMAjjI+OglVfyOGNGI66BAAzrzyN0tXoe0MDWnracFPHBos0CeoCjmvXvtgMHT
         uXtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=njtPNHXaEp9hy5jGZWFlludS5mKWxQ5WP333O4o5j2Q=;
        b=o9Fd0dRH2ixTKHiLTy96s5YguVWnPYuzxRd9sDDulwEH5Eki9Silw0xCeEihmAefju
         AlrE6aarnc+8Z6rZNCX7By1DI7Jt1VUSJZd4djdgDJ8Ft7F+lFLdP/ShjppMLMnGTRUI
         XPlX0XuU+qlIckSui4dYLZSy+bq342TXRlvq221xs/rCz0yEk3I9MiRUEMBKr8TgFaKI
         J/C9OS4srA1H16Sqo1HZ2BfZTj82sqtrDw+PEvfAU6AXkOpOOMQX01bbNb1I5S+GI7xI
         zDtBvBQ1NSbT5At7+6RVicMBZNtV2ttiKI7IscM974WeeCHQJa6LoE1Zs8o3cAdQvm4n
         HyEQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+63b52f56@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+63b52f56@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id t12-20020a37ea0c000000b006fc2210cf12si4623182qkj.465.2023.01.09.07.48.34
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 09 Jan 2023 07:48:34 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+63b52f56@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 638441 invoked by uid 1000); 9 Jan 2023 10:48:34 -0500
Date: Mon, 9 Jan 2023 10:48:34 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Juhyung Park <qkrwngud825@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  gregkh@linuxfoundation.org, zenghongling@kylinos.cn, zhongling0719@126.com
Subject: [usb-storage] Re: [PATCH] Revert "usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS"
Message-ID: <Y7w3UgeJHHcR7O6o@rowland.harvard.edu>
References: <20230109115550.71688-1-qkrwngud825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230109115550.71688-1-qkrwngud825@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+63b52f56@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+63b52f56@netrider.rowland.org
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

On Mon, Jan 09, 2023 at 08:55:50PM +0900, Juhyung Park wrote:
> This reverts commit e00b488e813f0f1ad9f778e771b7cd2fe2877023.
> 
> The commit e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS")
> blacklists UAS for the entire RTL9210 enclosures. Realtek's VendorId is 0x0bda
> and RTL9210 enclosures reports 0x9210 for its ProductId.
> 
> The RTL9210 controller was advertised with UAS since its release back in 2019
> and was shipped with a lot of enclosure products with different firmware
> combinations.
> 
> If UAS blacklisting is really required said product (Hiksemi USB3-FW), it
> should be done without blacklisting the entire RTL9210 products.

We cannot simply revert a patch if it fixes a problem for some devices.  
The devices would then stop working and that would be a regression, 
which is not allowed.

It will be necessary to find some other way of solving this problem.  
For example, a small piece of test code which can safely determine 
whether the firmware can handle UAS.

Alan Stern

> Fixes: e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS")
> Cc: Alan Stern <stern@rowland.harvard.edu>
> Cc: Hongling Zeng <zenghongling@kylinos.cn>
> Signed-off-by: Juhyung Park <qkrwngud825@gmail.com>
> ---
>  drivers/usb/storage/unusual_uas.h | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 251778d14e2d..c7b763d6d102 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -83,13 +83,6 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_REPORT_LUNS),
>  
> -/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
> -UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
> -		"Hiksemi",
> -		"External HDD",
> -		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> -		US_FL_IGNORE_UAS),
> -
>  /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
>  UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
>  		"Initio Corporation",
> -- 
> 2.39.0
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Y7w3UgeJHHcR7O6o%40rowland.harvard.edu.
