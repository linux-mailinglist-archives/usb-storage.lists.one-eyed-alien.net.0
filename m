Return-Path: <usb-storage+bncBCUJ7YGL3QFBB2524S7QMGQEHCUNACQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0E6A85F7E
	for <lists+usb-storage@lfdr.de>; Fri, 11 Apr 2025 15:47:25 +0200 (CEST)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-22aa75e6653sf15949435ad.0
        for <lists+usb-storage@lfdr.de>; Fri, 11 Apr 2025 06:47:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1744379244; cv=pass;
        d=google.com; s=arc-20240605;
        b=I9IjkhZLAK63CFHpL2i4SlVdoT/egUW8IiNApQFgH7LdLbt08dMC80odXKaiR4t/sB
         qLWxVMzRMVY+i3a/+/fzR6GBKPOU3By5gBkRYeGRoqjxbruL/wZYVLXyo/pOXvROUKlD
         BCz4FEjv+kuKlOG8NcUGIBOWcodKv9KD51ITlmOTIr9pk1WiZFGqb1hn4vADTXtGk+H/
         /Pnln9K3LZC9/KKKDxT40W9ulb/EoMcUyBpigxG8KkU8n7+ZpkVD3VrRT+S1/JJejge/
         MctfUN9vRZCG+2Rv8WTkY8WSGr+SxQNxNhnEMHq2SzngMx0EMN/gkaNsGc8CnS+wFyKJ
         jfCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gT3Nxs2nAZxFeCqKiw/K8DXEpcjbm4RskdgaV56Blvw=;
        fh=th4vgZAaMAcyBXZYehkX/z0Cmt4Eo5FGxcmE3MLxlMs=;
        b=LdoY+3hzBIu27GQHLz9cTdN/udg+fxIvoiqI57hQQtQJ/PL5zYPfEkYjPBpn6Tct21
         SeNUFJfj1c0pP0oSka4l11rks4tVAhpB/QL9hlMO42RAi07b8NccFkFaXcqLKAWatsjQ
         fxejGVEhA0rK8bKsHU/4Ccnr9MhLSktHo+153DxmhZDvXYudc7p/UX3/cLMnLTiXfh8A
         AO9cYO+iuOiH/FHiUl6DeMQM49X9dr6+ApFHMfsiH8URF1pRK+PGR0lb6I1JvuSxwfWM
         Q5JnIrmmRuQhQ2dt51RwJVkkGu5MoKdZ1N74aAsGf4jpk1aM9YlWXjanLMPsgebURo0v
         blHg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iGZ1rQh3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1744379244; x=1744984044; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gT3Nxs2nAZxFeCqKiw/K8DXEpcjbm4RskdgaV56Blvw=;
        b=clgZU7JuXdV7kK5VUn1ghzv7B8QdqZCIvgAr2h2YlDIbSNwIgQizv7YH+8egOHyleo
         chFcWNZVyGZKbRpt8cCb7gBitRICxlYeK0kFB4Y4M2eTDg4PQhR/dlPIqRubomsZ0RHS
         17e20HO5Ncyt5pLqLoPvnBNx+Vw4+xGG9wfu8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744379244; x=1744984044;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gT3Nxs2nAZxFeCqKiw/K8DXEpcjbm4RskdgaV56Blvw=;
        b=bU+ncVy7D87HshmKYoL+rA7INomcMp7IzP+H1cNlAmHFOUOwQf9Kq69jhJ0K8r9mdy
         ztWBEhDEscnR/W/5We7FEMlLjKrzJ9LLCByB6etkiBpeK2vf2XsiYkuVNzvMfzrVAZiG
         2eqGMubXXAS5FfiwYfhzyiqDOrHAeGzdw9tdlsli7HuKjrYbKpaQj/zBny4WpLinsn9Z
         TqPofxGPD4cAfSVYoc1U2RoMs+2NZsuxXcxscvC+CqFFf529x4jWk8XSrr9/cq2m9tpS
         HehECqvpIuFGAAnaz3qN0rKTd7TySupg9Ks85xKrfD1uvWNSyuIZBY2ALE0b+P96ZrTe
         XpxQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWx16bnm9SsxntmDSjrYHdIiPl+OtegR+klsAnhItzDdDOV9g5DPIJsqujhb7awZ/6xCLVu4g==@lfdr.de
X-Gm-Message-State: AOJu0Yx6+OjMY3tue4YKRufyEI90arqFMYkrLRDUoVyHOjC/A/m9TWfB
	NOt1VH1R4d21npouMnoEgDLpTHPRb7Gn6219gdVmTlBzA/0ciR25oowG3agtJOg=
X-Google-Smtp-Source: AGHT+IG56A2oFWiok2xYtxIfP50Cq5swla1CBmiZJeWLNknehDYJBvGQ594fhktIFqnrqEDgK+idcg==
X-Received: by 2002:a17:903:1a10:b0:220:c4e8:3b9d with SMTP id d9443c01a7336-22bea4efeefmr41686245ad.37.1744379243791;
        Fri, 11 Apr 2025 06:47:23 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=ARLLPAJChEBXEAPRX79Jdsr18PL1E7ILHOZFSGdhYUG+eZVP8w==
Received: by 2002:a17:903:bc6:b0:21d:d55b:4b77 with SMTP id
 d9443c01a7336-22acf26534bls1511945ad.2.-pod-prod-07-us; Fri, 11 Apr 2025
 06:47:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWBSt3b3Jy5mtNTuSmU7y5pY+gP/kFf+YCJ/fR56SgaOef39aojY4KtVLfYMHINCyj9Ang1JLskLOCeKQ==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:ebc2:b0:220:e63c:5b13 with SMTP id d9443c01a7336-22bea4fd043mr42620545ad.46.1744379242044;
        Fri, 11 Apr 2025 06:47:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1744379242; cv=none;
        d=google.com; s=arc-20240605;
        b=ZwhhGpxLsSA3mYMCM9rEnFsZB5yx95J79DT08Vx38vQZ8jxCZfDAb9JRtrtdHMDE6c
         noI2oydlvX4LClSnQuv0UV5YISz9RODnHRwxBZh22ObfTsbVPoYA4rIwg/BFirEF7zc8
         mK9E2T4E7FMveYuekHY2T81DtIOWyMtVWorP8ovcCVpJdlbmZPz7YymXcla0WH5mFtm5
         FpHjD1wpz5OuTv6ep/4muRo2tDa61qJDJG4JTHSiWtap9I0aHUKnRC6RKGw8tTCwVHIA
         AlLBLdMB8i9w+4XMLwS8GX+SPzyMVrCzFbPUArA/v74ki0OyLCj70YHPx14ZNkjhSuhh
         H+hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dsPYcsaga3cWf//eW2FbfTQvQII6LJ326OHBBz0pTmQ=;
        fh=p3O9wFo9lp5CTZxZlM9ef36/RseBJH9XtjipgWCS/Wo=;
        b=S7YFElfO+w9i8MX3GgnUnE0W8F9XUzPeVfbdkWppsvPF0SqmAV32S69WIyLWzyFOZA
         7CowdST09x1bpnUb03sQqF4DZhFUxaxFVMEbKt5awImuiCT0N6Poy8C4UGpbyaKqjYiP
         GR1rG9/qzWNG4SlzyrmKee6P3NWjszS1yGGZ06I/iur/siviUedrlUSF2bBRl1sWPw9X
         Jl5wiMcafhSRXBPuJeGudjECI+HH5RSqZX1JZVV9BdpbzjKtn1PUXWjrP3ga6ipOv2UP
         1zN0bYJeto+gZqynH/0BmWgrzClbxMGyotod5WlX+XTNckzZuN2PdlS0uRIgehH6y8Yh
         4tNQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iGZ1rQh3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [2600:3c0a:e001:78e:0:1991:8:25])
        by mx.google.com with ESMTPS id d9443c01a7336-22ac7c87fdesi78298585ad.268.2025.04.11.06.47.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 06:47:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) client-ip=2600:3c0a:e001:78e:0:1991:8:25;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 845B44A100;
	Fri, 11 Apr 2025 13:47:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C70A7C4CEE2;
	Fri, 11 Apr 2025 13:47:20 +0000 (UTC)
Date: Fri, 11 Apr 2025 15:47:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jie Deng <dengjie03@kylinos.cn>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	xiehongyu1@kylinos.cn
Subject: [usb-storage] Re: [PATCH] usb-storage: apply IGNORE_UAS for Realtek
 on RTL9210
Message-ID: <2025041114-party-deport-cd14@gregkh>
References: <20250326022019.1593669-1-dengjie03@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250326022019.1593669-1-dengjie03@kylinos.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=iGZ1rQh3;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Wed, Mar 26, 2025 at 10:20:19AM +0800, Jie Deng wrote:
> The UAS mode of Realtek USB_HDD is reported
> to fail to work on several platforms with
> the following error message, then after
> re-connecting the device will be offlined
> and not working at all.
> 
> [  143.361210] sd 9:0:0:0: [sdg]
> tag#6 uas_eh_abort_handler 0 uas-tag 2 inflight: CMD IN
> [  143.372377] sd 9:0:0:0: [sdg]
> tag#6 CDB: Read(10) 28 00 00 00 00 10 00 00 10 00
> [  143.382908] sd 9:0:0:0: [sdg]
> tag#5 uas_eh_abort_handler 0 uas-tag 1 inflight: CMD IN
> [  143.394080] sd 9:0:0:0: [sdg]
> tag#5 CDB: Read(10) 28 00 00 00 00 00 00 00 10 00
> [  143.404610] sd 9:0:0:0: [sdg]
> tag#4 uas_eh_abort_handler 0 uas-tag 4 inflight: CMD IN
> [  143.415782] sd 9:0:0:0: [sdg]
> tag#4 CDB: Read(10) 28 00 00 00 00 30 00 00 10 00
> [  148.437916][ 22] xhci_hcd 0000:ba:02.0:
> xHCI host not responding to stop endpoint command.
> [  148.462295][ 22] xhci_hcd 0000:ba:02.0:
> xHCI host controller not responding, assume dead

Please don't wrap error message lines.

> The Realtek Manufacturer's device cannot
> initialize properly using the UAS driver,
> so we need to switch it to usb-storage

Are you sure this now works?  Also wrap your changelog at 72 columns
please.

> 
> Signed-off-by: Jie Deng <dengjie03@kylinos.cn>
> ---
>  drivers/usb/storage/uas-detect.h | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/uas-detect.h b/drivers/usb/storage/uas-detect.h
> index 4d3b49e5b87a..23579a2a1181 100644
> --- a/drivers/usb/storage/uas-detect.h
> +++ b/drivers/usb/storage/uas-detect.h
> @@ -125,8 +125,11 @@ static int uas_use_uas_driver(struct usb_interface *intf,
>  	 */
>  	if (le16_to_cpu(udev->descriptor.idVendor) == 0x0bda &&
>  			le16_to_cpu(udev->descriptor.idProduct) == 0x9210 &&
> -			(udev->manufacturer && !strcmp(udev->manufacturer, "HIKSEMI")) &&
> -			(udev->product && !strcmp(udev->product, "MD202")))
> +			(((udev->manufacturer && !strcmp(udev->manufacturer, "HIKSEMI")) &&
> +			(udev->product && !strcmp(udev->product, "MD202"))) ||
> +			((udev->manufacturer && !strcmp(udev->manufacturer, "Realtek")) &&
> +			(udev->product && !strcmp(udev->product, "RTL9210")))

So all products with that string are bad?  Why not use the product id
instead?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025041114-party-deport-cd14%40gregkh.
