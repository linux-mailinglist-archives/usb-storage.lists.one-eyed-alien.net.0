Return-Path: <usb-storage+bncBD6LRVPZ6YGRB5G45SMAMGQEZF6VMGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 949C45B374F
	for <lists+usb-storage@lfdr.de>; Fri,  9 Sep 2022 14:15:49 +0200 (CEST)
Received: by mail-qv1-xf47.google.com with SMTP id ks13-20020a056214310d00b004a7c32300fcsf1058684qvb.9
        for <lists+usb-storage@lfdr.de>; Fri, 09 Sep 2022 05:15:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662725748; cv=pass;
        d=google.com; s=arc-20160816;
        b=b0yHxp1CLwMkeJEHkTHZxQFWIsSEFmp3JrKewFIP+O01uaSbOhFVYzfQ8dkuaPMOvx
         umupCufDr6h+g9pAKjxExEnTfWe3GKVdRrXMLbp1q8YtGSWhn9tV0fDZyBXhXi4jiUPN
         6AYUP1zKPZ0SvrBfaex9L65FIWYvpALkOobCZC7vTBY9mZQ9fJ4cGPdml8x5l4cx5qQA
         zrjwQFNsNr5M1Ry20zFhyxJGUehgrn01rhXCFR/DpSScm9kaoX0h07xylByUa7oVLGEO
         /SSs3GGOxX6inumDqCKGqMm/2BXH2YmOPmlcwvWr12/pFBf4OofI93Lg24QObLcslKSc
         nlkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=e/iFuhyQzH00KOEl2T9rPY4XUhEftI3RUzXnj2X5NPk=;
        b=n3mRvdTCagJDJG4qmPeS8aAwyHVPe9HamHZeaimnyL/d/oEX6+VQNuCSlKshTG39ra
         eTMh+8+OiF/rBC9RRrl0a12dvpHeqG3yhw+0WWKyLwPrWxIGhzwYnqlNqZp/rYTF84a9
         gnyj+VxxTUAwg4XanTtQXFCPN7ZHJ24pLD4wFURBZC60cCobMPQLTFJnjy55EpBTMjh+
         wJ8zS0moQvkUXsLnrVX1SoB4/iHlY0X60iJWK6NOc2Cmz8frvuoAJGi76MSltqZx/T1p
         GbFmm+ZMnsTx1QH7ycrXq/9UPujhgHji4LAKaaM7KxeJwNIDzv4DXR+g4+9qJ3DqhjEV
         rL4Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date;
        bh=e/iFuhyQzH00KOEl2T9rPY4XUhEftI3RUzXnj2X5NPk=;
        b=URoRGQMY5gB79IZhvklbGERiDicTQpDsiUCiXzMWU4zhfRVE4YShG55FaM5I51DnKT
         uZoAcp3YUT4CNujk/f3tHlJYN8D2BqkfuX/l/5uJ5ZGjMmLXXSYQQFCmZhwUxLOEjui1
         ni8j6OvefSMLV8c++88gjl7SVKkf48CWWbpxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date;
        bh=e/iFuhyQzH00KOEl2T9rPY4XUhEftI3RUzXnj2X5NPk=;
        b=IYn9JFs+afRAZWMW6uhQA/q6Anv3n6vp7ebC1oWj1fVEIn+fqhJO8xr5I19rkgcXbv
         UHX9R/hfOQzmCdjDyAmQZOgVTp4UO7QLxhvBI9YkrQAqV8HkRbSEbt+8hlqf/tWo5jGs
         i1ROlWuNO0AZ1sJOnkJYfx+4s56GBORrg4p+G4VjVInhjxqU2W0+FhCuS8bUyE7oAy2t
         jIHgnCBdegL9hrCe3A7oN/Q8HWPYv+1KKzt4sIuxI3hgRRO3864IDW79qlTP/FgTjNj+
         nGWoeoBSiypLNSCNs6goOjLMc8ORBIhydUzPYxeaC7E202qQoNTbGEwfSz+JoqcF0khc
         p4Vg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0pGJp9vSk1z7R7DkIFBC+qYDRS5H+Y7kls6tWrJ7Pz/31CRyYm
	xcrwaaH5+a44WetgBUmssUsmGw==
X-Google-Smtp-Source: AA6agR75MFsgweFo3yX2JnfyCGk5OULxbuefgwhtgG0G36cuJfSd/ktHYJ11V6vxTq47CBcpf5qUwA==
X-Received: by 2002:ad4:5bac:0:b0:4ac:8e0d:38df with SMTP id 12-20020ad45bac000000b004ac8e0d38dfmr1284226qvq.31.1662725748305;
        Fri, 09 Sep 2022 05:15:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:e3c7:0:b0:4aa:9cf4:af37 with SMTP id e7-20020a0ce3c7000000b004aa9cf4af37ls2406440qvl.11.-pod-prod-gmail;
 Fri, 09 Sep 2022 05:15:47 -0700 (PDT)
X-Received: by 2002:a05:6214:19c5:b0:498:fcc3:5deb with SMTP id j5-20020a05621419c500b00498fcc35debmr11790495qvc.128.1662725747580;
        Fri, 09 Sep 2022 05:15:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662725747; cv=none;
        d=google.com; s=arc-20160816;
        b=L2A/M9yVwGrofhrGmp+tWwXRSd7VdaFVpiS07FfoKh1DWnMu4DE/juvIuov8DrmxTk
         mx3KR3yss03QJTegYZ4zUy4/PXvIQg0b1pEnNfz/mIyhakR0LZe2MxZcWRHjviBRdZT4
         AC5m5XMMlTCixzeBP7SX4KNuN7ifnveWt7tKys4HCqj89u72CFNVVLDg7l1ydRhV6nFA
         bHzfGKt3Fh45hYkOKwqgBfEQhLQ2qc2oGOiw7X7mw4LZdxXec9LEBdbD4mmQHMknHH6W
         JNvysmmzbwxjtIi8n4UlKc5sA5+tgh/os3zk3xkj6YTrxoNC/zMSRQF5C5kqAah1jKgI
         Sdhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=i1Comh12bVXJC6LE/ZkslpgranXvWr0HKSlCcu4Zudc=;
        b=jxJ+liVVOAKBdGRNyewfxa5L7+too4asjruM5BnhzqNGzEcVqnhCHzoQnP8qLgUAhW
         PRtQ6guPXqT9ivdrDg8DBJN246eGzGKTQZ7OsGhTFGeBSudMGX5fb6roABNBdHlf8PyI
         ea4EJkFqXnhXyAKf0qo6EdDB6JIwIGp86DvBnqo6bQ/CRNfXlLE6PMPWRoeVx9lMk1l+
         0qVJoIclhdekPF0cQFFqSQ5j0My1EgmBSX0diV/3LBg+7YlvjYjU1um+R1QAlZEgPFB8
         bwnSkwtULgb1zH/ah1xQVs6KXu0x2pmgv+lDNTUA3yWhjA/pyarKwAkSnJStmN/ZJDZk
         XFCA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id o25-20020a05620a229900b006bc1512988asi187255qkh.572.2022.09.09.05.15.47
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 09 Sep 2022 05:15:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 486811 invoked by uid 1000); 9 Sep 2022 08:15:46 -0400
Date: Fri, 9 Sep 2022 08:15:46 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, zhongling0719@126.com
Subject: [usb-storage] Re: [PATCH v4 3/3] uas: ignore UAS for Thinkplus chips
Message-ID: <YxsucjOnUkb8NxKo@rowland.harvard.edu>
References: <1662720530-32313-1-git-send-email-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1662720530-32313-1-git-send-email-zenghongling@kylinos.cn>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
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

On Fri, Sep 09, 2022 at 06:48:50PM +0800, Hongling Zeng wrote:
> The UAS mode of Thinkplus is reported to fail to work on
> several platforms with the following error message:
> 
> [   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled
>                endpoint or incorrect stream ring
> [   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000
>                1b000000 05038000
> 
> Falling back to USB mass storage can solve this problem, so ignore UAS
> function of this chip.
> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>

I never sent you an Acked-by: for this patch.  In fact, I asked you 
questions about it which you haven't yet answered.

Specifically: How do Windows and Mac OSX work with this drive?

Alan Stern

> Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> ---
> Change for v1
>  - Change the email real name and the code worng place.
> 
> Change for v2
>  -Change spelling error.
> 
> Change for v3
>  -Add acked-by
> 
> Change for v4
>  -Fix version error
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 8a18d58..156e89c 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -198,6 +198,13 @@ UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_ATA_1X),
>  
> +/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
> +UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
> +		"Thinkplus",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>  /* Reported-by: Hans de Goede <hdegoede@redhat.com> */
>  UNUSUAL_DEV(0x2109, 0x0711, 0x0000, 0x9999,
>  		"VIA",
> -- 
> 2.1.0
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YxsucjOnUkb8NxKo%40rowland.harvard.edu.
