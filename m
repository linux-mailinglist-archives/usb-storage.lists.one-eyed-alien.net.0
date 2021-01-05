Return-Path: <usb-storage+bncBDRZXY4CYYORB2X62D7QKGQEZJC7CAY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD352EA8A8
	for <lists+usb-storage@lfdr.de>; Tue,  5 Jan 2021 11:29:00 +0100 (CET)
Received: by mail-yb1-xb46.google.com with SMTP id x17sf55249501ybs.12
        for <lists+usb-storage@lfdr.de>; Tue, 05 Jan 2021 02:29:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609842539; cv=pass;
        d=google.com; s=arc-20160816;
        b=W+CA//bURiguy9HGzYjtQ3Hrz41Q97Xq8W7D/9daVFxQgQmK11JpvbwlL4sOeoPsaj
         pT2XpfYU6xCqrxgSd0u/3NhpPCyfnvQufs4G/l92ZuRssQwisUswgmldMJ9BQkRP+6fY
         OLPlMhFi7DzzvEDyR/TjBwSL3d9KEzqPXvFbQ8ZT8gBbxb7Cc6EkkSFKfuBBluAtnKzO
         7lAfmLOLrZRFj7nZz9UJ0Th2nMo9MHyxRS/91pwf0EqL9+bY1y5n7hWhIxrCUIctYf04
         +zadCyXdvO6ckx6IumZ025QAlfqNBgkWW0Rib9wnvr3nIVBoyJtWpHdoyyVyHJQnpZ8P
         eIEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=GtkHT/KdYpfcnRS8aHeCr87A020bheo67828ixMNIho=;
        b=VAsrQPJTm8ptAGSiE5TfVI6hICD2DsHk+yJbFMVDjcKXKWADJm54Uf4UwaVBZsB9PQ
         6lTTDvwH64VQmMzraOTWBLveSbhH6wQtpyqrIGY6kwUNtdTjOi2t2BI80LQbkprKHumR
         5hWej2VrbO5Giv9E6766EtL1SBXVpTiHyQUurH8c2XLEcUvBFB7gBhDwLLwDxO4eE1ga
         VtgKEenwc6E82Eh+e+0/iWqWVyssQn1pAfPdjdHtdKz93kEJTdi7ljz9wMAgCdepUqOg
         ZppCpwI5IEkdJ4sCYYrm8Jy9gN/KQJmmDlxClHiAWXeUe0CYN1+9+qhMGLxmnLe6vegJ
         Nq1g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Mxk0DOAW;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GtkHT/KdYpfcnRS8aHeCr87A020bheo67828ixMNIho=;
        b=EB1pQycdf45hTHkgEuVB91VU0W7PVKqcIEI6E7+KhSjhk3ckeaDwdxLDAY2flPSEO/
         /+0XxDCCl3yf8DwzakIKuvtOJFk8trkE3f9kugJXRdyBCWGXMGqI+A5eGLpYcyw5KN5K
         4AUlxZTeBqTqwJygEg5OMsUqAvAGf8Smh5Agg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GtkHT/KdYpfcnRS8aHeCr87A020bheo67828ixMNIho=;
        b=b3wvukum78T11vhi1wA93iu0yf7pMs4aIMLSZliWFGF5FKluwpYcniYzQcNm4aYpFx
         3U6cgfAuH981ldyX5FxzdHmE5xwTDkD3bRfoex3myyB7oX5CT5aBiWOQih2K4mG66rdl
         22rfvtfcgge2WMp2IwAlRYHT3vXMj6sQclMx9QqiWU7OgTbJresRmSKold1emhi1vVyW
         Qp/ABK6l7C/pTb7xf52/aXirAOEL2Nbcx1VObCr/bRxLZP0k8iFKc11Vf7pLjDJFM5JZ
         zfhPWsUcig5ykG/Q5MtO9g1xaIBIQEr6uSqZG9S+0fu7p5DK5+WoEA30B9reWCgE51yy
         HiBA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531uy9BHRmiodjBQiWhBwQXP8zk/0CFlSTUuMAceAK6ON4nWobaY
	JtJsxHNoD6xkEvlw+x259gNj2Q==
X-Google-Smtp-Source: ABdhPJwhqrIcO+o++fuGJ6DcNtcmE2Grf+BpgmlUn/7u28zIhXkrQxws5mgLCBcZder+jRcBU+Q/yA==
X-Received: by 2002:a25:e0cf:: with SMTP id x198mr115778767ybg.12.1609842539050;
        Tue, 05 Jan 2021 02:28:59 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:77cc:: with SMTP id s195ls38711798ybc.2.gmail; Tue, 05
 Jan 2021 02:28:58 -0800 (PST)
X-Received: by 2002:a25:c107:: with SMTP id r7mr98477265ybf.492.1609842538351;
        Tue, 05 Jan 2021 02:28:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609842538; cv=none;
        d=google.com; s=arc-20160816;
        b=u2Sn5UnxwBMcYJ7AzsNJzkF3pgcY6kHEffEwYcrmYqei6sJNpNnSbbg+A8tlcdfdgs
         OpNMHjSQ+P1etKY677OlkLKjZ0cxbIqtClfpFkzCAIU7QAMI5NCcEaIyq+MKVsBYDq2z
         I57raqaxUeP5cb7SnlKzfI3EqDRYTTqDmabEs3+t8qVh/Z/GwDAyGbEMWOipFSBXQwAA
         fbttqIhx+rjZaHh+kX3ecF0RbIFiaSHGSnA8kq9BqFhQJNhnphR8ipRLIfCG1f7O4URP
         cS8x8icchF23wE6UI0okRaPrtn4tGjOBFKrZ4rM6qMLGiS0iTqvQfjc5CCBKqjf0CoG2
         4IWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=H30d+AlR8ieFQgPqpprypshZD37jO8PgTCkCJgLRnb0=;
        b=pt3XLgwMgQkdROYVead0taO4YZPJcf3vSmXM5u0UmsLUHdZDH9fFlvfU5IFzGAA5SF
         jhZxADMByLb12x9XZwVlJEdInybxGC/rcEaxTFF2aP4veX+XhKDlSzNIdFWqNIkKCgJ8
         VJ4nZDnzjcZvPie/7T2LwQ93fQFqQqa7fv6tFhU/6ELKSYbytXytpjrM63uNlRB5165q
         YAl0V34vjc0mAPuar785S9CYHKt6MVgXv5q1oogPpZGAGIaWPfAujBZXuZcar54s+BVE
         sGCcIHGH3QQSRyOx3sFqBt9Rty6+ZZl8T2TVHXOLUrLxKravFWB9WcVERfeWQ5eHfyO7
         qb2g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Mxk0DOAW;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by mx.google.com with ESMTPS id b9si62355540ybg.311.2021.01.05.02.28.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 02:28:58 -0800 (PST)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-370-JSpGfvwEN2S0IVkUe1xjvw-1; Tue, 05 Jan 2021 05:28:56 -0500
X-MC-Unique: JSpGfvwEN2S0IVkUe1xjvw-1
Received: by mail-ej1-f70.google.com with SMTP id dv25so7842349ejb.15
        for <usb-storage@lists.one-eyed-alien.net>; Tue, 05 Jan 2021 02:28:56 -0800 (PST)
X-Received: by 2002:a05:6402:404:: with SMTP id q4mr76806672edv.295.1609842535106;
        Tue, 05 Jan 2021 02:28:55 -0800 (PST)
X-Received: by 2002:a05:6402:404:: with SMTP id q4mr76806650edv.295.1609842534887;
        Tue, 05 Jan 2021 02:28:54 -0800 (PST)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-37a3-353b-be90-1238.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:37a3:353b:be90:1238])
        by smtp.gmail.com with ESMTPSA id oq7sm24754910ejb.63.2021.01.05.02.28.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 02:28:54 -0800 (PST)
Subject: [usb-storage] Re: [PATCH] usb: uas: Add PNY USB Portable SSD to unusual_uas
To: Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alan Stern <stern@rowland.harvard.edu>, usb-storage@lists.one-eyed-alien.net
Cc: stable@vger.kernel.org, linux-usb@vger.kernel.org
References: <2edc7af892d0913bf06f5b35e49ec463f03d5ed8.1609819418.git.Thinh.Nguyen@synopsys.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <e0a6cb75-1000-5889-6dfa-dc236d4ed4fa@redhat.com>
Date: Tue, 5 Jan 2021 11:28:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <2edc7af892d0913bf06f5b35e49ec463f03d5ed8.1609819418.git.Thinh.Nguyen@synopsys.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Mxk0DOAW;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Hi,

On 1/5/21 5:07 AM, Thinh Nguyen wrote:
> Here's another variant PNY Pro Elite USB 3.1 Gen 2 portable SSD that
> hangs and doesn't respond to ATA_1x pass-through commands. If it doesn't
> support these commands, it should respond properly to the host. Add it
> to the unusual uas list to be able to move forward with other
> operations.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 870e9cf3d5dc..f9677a5ec31b 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -90,6 +90,13 @@ UNUSUAL_DEV(0x152d, 0x0578, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_BROKEN_FUA),
>  
> +/* Reported-by: Thinh Nguyen <thinhn@synopsys.com> */
> +UNUSUAL_DEV(0x154b, 0xf00b, 0x0000, 0x9999,
> +		"PNY",
> +		"Pro Elite SSD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_NO_ATA_1X),
> +
>  /* Reported-by: Thinh Nguyen <thinhn@synopsys.com> */
>  UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
>  		"PNY",
> 
> base-commit: 5c8fe583cce542aa0b84adc939ce85293de36e5e
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/e0a6cb75-1000-5889-6dfa-dc236d4ed4fa%40redhat.com.
