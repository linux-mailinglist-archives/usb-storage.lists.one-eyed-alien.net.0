Return-Path: <usb-storage+bncBD6LRVPZ6YGRBEFRQGUQMGQEZPRJXFY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3DA7BBF62
	for <lists+usb-storage@lfdr.de>; Fri,  6 Oct 2023 20:57:21 +0200 (CEST)
Received: by mail-ot1-x346.google.com with SMTP id 46e09a7af769-6c4fa7d0da0sf2852563a34.3
        for <lists+usb-storage@lfdr.de>; Fri, 06 Oct 2023 11:57:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696618640; cv=pass;
        d=google.com; s=arc-20160816;
        b=UOsbCOh58afLEXPAnd0lc2oZiZhpZwpv5oXK8RyJkeZ8hvvVjZrt8H2T7kqH2rFY8G
         NJcVS+GyJhkeyjo7lNuFUaX3CGrFuyxydrEt4J1DKO4nql3mnmjt/L2+EIMGApzg+GbY
         tpUtnjeyBwQXUEe0AS3UKGTTL6r+6Mbvhy6DfOiEyCgyQ8UKx9D9KwjMkkWgmfGIQ0l+
         RR+gaoeunWRzcPyeyEtNs0GZy8QTQpO+qdHoEm7mmnBfDIOFfswStAAnv/x7CA1pdPQy
         f8yMR5wW0uHoFNByTPTNyOcmxRn+0esktDzzl02F6iLDwlyBt8FuCe2OM7jBaZ7jUAiK
         hL1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vBePv8GSTmDp0xPiPh4rmI0QwsB9q9g37+uXoaY7SbU=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=zAyGZV1zXGtF1VoPFwFPmn97z0EiRL/aPRmsq7I954pKr66O8WH8c7kaXQ32qKESWO
         cm80id3Z/jyXa9IXnOosgu22mKeYk6uJt4S9TXO+l+WSlkc3VIZYoeVKkizVh6BXNnGA
         15TWplP4dqSUjVoNo07ayinKaddakYDMKiYsCtIlfx1ARumwtlQ2L4T851D87kpNzmYq
         ebWo/wurip0eTcs8J2ij3EjifASjMPdMQXhJcA0qxt8C/48ZtX680EY3Wc4JmfZkkqDL
         vGH3ZiNecAChwFZ4GfPweJpy5w8PifgNJGv+2O2c1oJADFb0jcw8VARuxIyXKPgxYdT5
         zTtQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696618640; x=1697223440; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vBePv8GSTmDp0xPiPh4rmI0QwsB9q9g37+uXoaY7SbU=;
        b=ECovaUKn1/0M5XHp0c9w8kvK1832fuSc2EgfWpey6aEr6K76VQtsRuO18rRxWckywm
         wLdoOW69ug6+/7pUg+S7wbngiPI74PFbWJiTdXy9Rs3XVGX6EjuLtDWxeFIJ6Ms79HdE
         KDuudo3KIsIUD9erSrVL/Ih54UL2NTdZsxG9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696618640; x=1697223440;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vBePv8GSTmDp0xPiPh4rmI0QwsB9q9g37+uXoaY7SbU=;
        b=d12UIJaEYaER76FVrw5VnuEzkLx8hHm+qBQoLIV7gprcSydnCmTtlGs6bm8Fqj1LmC
         r6Phx0ZK0VwnL62ktluC3zywbkUjxk6mXUqDTSa1ZUfzx7ZlYsX8JN8rR/UMOHmAF8rF
         jPH/vehiyZq0RxMSDxeqHzqFG940WHmFHLlOP1WzHwZ888NCpZLSO//6eqn49WBLfOkx
         MfffEGgvQncYk2SNXxirTYnTqc9yT6+eUcnqEjYV/JQ+GxTTQh5tBb21ib0z/bVmMZhF
         /RChkwb2kZv1wBZTG/xfH8EShXTL82CP9jeZHZi3YDLJ6h2Xeend95Z9n0r4CpMc1cn9
         lR4Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyEHvc2ynkr+yKi6WIUO+1sydwiTj/8d633jgdLGUaumIfpQ/oK
	Rp/mlcB7Cs0/+xHoI7BWjFYyrA==
X-Google-Smtp-Source: AGHT+IHRK/rDnZLF4rYgH1/VWaTOFa2d8zl9Ohyud1GEF4TPCFemHos1AZCo5k1IilO1xdNfK1haGg==
X-Received: by 2002:a05:6870:d38a:b0:1be:f7d9:c0e2 with SMTP id k10-20020a056870d38a00b001bef7d9c0e2mr9756493oag.38.1696618640124;
        Fri, 06 Oct 2023 11:57:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:b6a7:b0:1c5:33df:eba7 with SMTP id
 cy39-20020a056870b6a700b001c533dfeba7ls3488108oab.1.-pod-prod-07-us; Fri, 06
 Oct 2023 11:57:19 -0700 (PDT)
X-Received: by 2002:a05:6870:b152:b0:1dc:884a:95c1 with SMTP id a18-20020a056870b15200b001dc884a95c1mr10389496oal.44.1696618639338;
        Fri, 06 Oct 2023 11:57:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696618639; cv=none;
        d=google.com; s=arc-20160816;
        b=a5ZJ81eM6c25e8gO03zcGmRtzcK3pea+qjLMwigUiOT+RWYYPvm1MzDYoKdyYVXDzU
         2pNoruMztfmXkITw6uH8IGpnI7X+l/ltzkf0472ULXxYvn3D1ocXYugxcEkyxc9drf1P
         2JpsiSn8qqppI0FrflBYo4OwmSYHsb+POjSDOrocejzjuPO4XS6LFRCi7jl/AkdrdBcV
         j+AWnKmkK/Yl7UU1korE/vHBd4uyb4IlJ1MJvFQpHI8zuzAR+9OpbT9edM6QbATbpFL6
         JHKqQD4gE1k0pWdyuwm9pLaDj1GsbdBu3coQSOdeKJRmPgg2SLD7nS8OnujzIdFr1VmW
         nFtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=jd3z5+jyB7NpfrlcDu4NNVbKZXFKDJo32ZrHGDB+Pro=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=uOMxA11G26MyqeWVNRD1saPDM4UQeNXPbi7UzeowLYJULPCFmmwSpL/QF4qp2AxJGl
         Njl7FoELQDHs/bmt0zPjU74wYDx1U/8f7ZdqPEhscSDMY+BdLJfI29CnMIgh7IJIoS3s
         rbzbSDsm8BodNp8wjO+uq1dLPnLGgeIXFXdF5LdY4+wBKoxvOkvH8N+GinrRpbuE9XDu
         Yu3MVreYBfIadTAxG3VZY5vO1vnoDLEvnXsnlEVT0+FjE1TdUcZjtR5oRtoqz8sCGJF4
         2g27T3a7WAEAbyardJc8Y82bWorNHN6OJGOdlV6EkB+IWZhh5uraWGsu8gSSietPV3Gg
         rxew==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id y17-20020a056871011100b001c0c80124c1si1462110oab.47.2023.10.06.11.57.19
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 06 Oct 2023 11:57:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 54422 invoked by uid 1000); 6 Oct 2023 14:57:18 -0400
Date: Fri, 6 Oct 2023 14:57:18 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, linux-block@vger.kernel.org, oneukum@suse.com,
  jonathan.derrick@linux.dev
Subject: [usb-storage] Re: [RFC PATCH 6/6] usb-storage,uas: Disable security
 commands (OPAL) for RT9210 chip family
Message-ID: <e9aad1d3-1aa1-4f09-955f-6d9f6f604600@rowland.harvard.edu>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231006125445.122380-7-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231006125445.122380-7-gmazyland@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
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

On Fri, Oct 06, 2023 at 02:54:45PM +0200, Milan Broz wrote:
> Realtek 9210 family (NVME to USB bridge) adapters always set
> the write-protected bit for the whole drive if an OPAL locking range
> is defined (even if the OPAL locking range just covers part of the disk).
> 
> The only way to recover is PSID reset and physical reconnection of the device.
> 
> This looks like a wrong implementation of OPAL standard (and I will try
> to report it to Realtek as it happens for all firmware versions I have),
> but for now, these adapters are unusable for OPAL.
> 
> Signed-off-by: Milan Broz <gmazyland@gmail.com>
> ---
>  drivers/usb/storage/unusual_devs.h | 11 +++++++++++
>  drivers/usb/storage/unusual_uas.h  | 11 +++++++++++
>  2 files changed, 22 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
> index 20dcbccb290b..b7c0df180e5d 100644
> --- a/drivers/usb/storage/unusual_devs.h
> +++ b/drivers/usb/storage/unusual_devs.h
> @@ -1476,6 +1476,17 @@ UNUSUAL_DEV( 0x0bc2, 0x3332, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_WP_DETECT ),
>  
> +/*
> + * Realtek 9210 family set global write-protection flag
> + * for any OPAL locking range making device unusable
> + * Reported-by: Milan Broz <gmazyland@gmail.com>
> + */
> +UNUSUAL_DEV( 0x0bda, 0x9210, 0x0000, 0xffff,
> +		"Realtek",
> +		"",

Doesn't Realtek have some sort of product name you can put here?

> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_OPAL),
> +
>  UNUSUAL_DEV(  0x0d49, 0x7310, 0x0000, 0x9999,
>  		"Maxtor",
>  		"USB to SATA",
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 1f8c9b16a0fb..71ab824bfb32 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -185,3 +185,14 @@ UNUSUAL_DEV(0x4971, 0x8024, 0x0000, 0x9999,
>  		"External HDD",
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_ALWAYS_SYNC),
> +
> +/*
> + * Realtek 9210 family set global write-protection flag
> + * for any OPAL locking range making device unusable
> + * Reported-by: Milan Broz <gmazyland@gmail.com>
> + */
> +UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0xffff,
> +		"Realtek",
> +		"",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_OPAL),

This entry is not in the right position.  The file is supposed to be 
sorted by vendor ID, then product ID.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/e9aad1d3-1aa1-4f09-955f-6d9f6f604600%40rowland.harvard.edu.
