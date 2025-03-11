Return-Path: <usb-storage+bncBCUJ7YGL3QFBBX4NYC7AMGQEQ4VDJ6A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com [IPv6:2607:f8b0:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCEAA5BC9C
	for <lists+usb-storage@lfdr.de>; Tue, 11 Mar 2025 10:48:18 +0100 (CET)
Received: by mail-oi1-x246.google.com with SMTP id 5614622812f47-3f68f2f906csf4760698b6e.3
        for <lists+usb-storage@lfdr.de>; Tue, 11 Mar 2025 02:48:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741686496; cv=pass;
        d=google.com; s=arc-20240605;
        b=kL06YEn1NukDxEqQWkoFdfpBkfoenzdOGWp+HRTMHXtuYJ+p7fU5OBq5Qpi3jsoB7U
         aQldo5LUEI2CtMnnEPW8Xw0CZxSPea5aanQmWD5/2x+WAnbqOCSnW4kng/S9ct0l1gXc
         OxH0OKEf5CK6knB8S4zJVJxVlRp0iKz9DHY/M0YPj4UqEiNKDrJJoTHcSpkb+VZvjsKG
         v3hRW0712wOuT6tZHOpnivsmfGElE4KafVmghFP10oN6sBjNiEMsI7VqXqqKAbYREBwh
         iLnqnDqqSm4s3lBIVZdsIJOtqvhVSq+N4/dk5xK+dtHjLW7WySSEZhP++5/H4kYisaIr
         udhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tl2vu9H6IYwrhPDpk4U8JC484i97Rm04dYBlcWzfCHY=;
        fh=HqnZ6kiiBT958Fhqb+Zpn/K3bz3Y2r1dZqc+F58Js4k=;
        b=ZD8LRyD0xkI/u2Mh4uhZq6sNHfksNnlikn1B5OPMFt71HiqpTpfv7mrFlKSeqmpSfk
         Is2OoKWVBZxoR7xx6hgZilsR+/ffmWTtPpPtrwD8/VY/lGklWctc3d1oeIW335oMvD+Z
         hg+GqSrVjYGal+2Rx0D7KtSVtJg5CAEciZDzHMLzw1ltZnHrKZc69vIOC2qSto7XwFCN
         2eP4bFjKQtRCyN7y00RV0sJrgfCM4Ec6vhGUScjuCI2LeLha7fnPypHuzBNtHrFg8bEp
         xusxu4Kfm/jj9XHliTlye+OWunVulYQTkk/osnMQItOWhl2Z0TFRx+07tvPi19qOtMDM
         KW5g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=aaTeGECj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1741686496; x=1742291296; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tl2vu9H6IYwrhPDpk4U8JC484i97Rm04dYBlcWzfCHY=;
        b=PUcAevMh4SuCZpp37DkWnFeY5qUcWDdslFee9VmvFJrwTRYujUWrQPqPWMZfkbsVyq
         ptAvnUBAJivJUT1so5OADbs5wPWBtV4f/GFRSF+N2KntYK2lZn6LmdMvROmt6Ci3jiCS
         1c1pNomSROWWxVhD5mXQERSk+sIYR9I8dVgoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741686496; x=1742291296;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tl2vu9H6IYwrhPDpk4U8JC484i97Rm04dYBlcWzfCHY=;
        b=xGYpDmDN91gnsaf2QmyH7xjWRXqgO1waL6/VrhsJDfQS2SlPBFg5TxJQQfRs5YuH9k
         T0j/hSJNA03ItBKiLNGkE8cDJ406rMqWCBQIEq4V7nFZN0A1XrSPBtcKq/IkuSwDLZnS
         uXLqM9gSsmHUXKq8pMTLiWW/x2xCV2VKD4xt2NXjY3Re77+S7hoVtjPLQfo/IFZCbv3E
         q6WJcWTbuQBpR9lIOni9fGTubqu7d6Ts0zhgD0ZJs0mbiuTSpiHv4INhlrgf0c7OsNaE
         JyGQLFicv04duYLarfrMmsd1O0W5oa5tZ7TR7wZiXQw/p89KChpRiD0Bbfyq44lyn6Nt
         qvzA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVwOTizBXVWVWghDLyPtkUIaN5nq3dityh8/oMkun31sIKT5gtakKrf7TLvYd6lF2bTGtMcmg==@lfdr.de
X-Gm-Message-State: AOJu0YxGDM2yyf6akCV1UkwOOwvycmWdS19N4vAH9qz3IsSuP7PF73T5
	S2VJBFubfYI9uHC5ldVzcgXVlFzghdeUpaigF00xgO5ZPOzAaFMOYlHB14DN1qs=
X-Google-Smtp-Source: AGHT+IErdgqbzyOfi5hYVXx4EisvvkdubJ+mcyqeP4h6xaOw3EqEs66ETtpMrkf12RpCP6m2IFtzxw==
X-Received: by 2002:a05:6808:220f:b0:3f6:7832:7805 with SMTP id 5614622812f47-3f697bc713bmr9368880b6e.32.1741686496588;
        Tue, 11 Mar 2025 02:48:16 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVEQf3SEI/RxUTpMdQl3hd8PzueF6rM22Y2tayzYU8AMYw==
Received: by 2002:a4a:bb85:0:b0:600:3635:7454 with SMTP id 006d021491bc7-6003ead7a13ls997558eaf.1.-pod-prod-07-us;
 Tue, 11 Mar 2025 02:48:15 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWQ4kC67NABBuMiAgtsXd/kIRW/tL38pUJS35Uh1OFkXqGo8aO+BpyjI+muBBPFVLK7dkrxbS0u7X/RHQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6830:718b:b0:72a:1821:aa9c with SMTP id 46e09a7af769-72a37b6ffaamr10770144a34.8.1741686495327;
        Tue, 11 Mar 2025 02:48:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741686495; cv=none;
        d=google.com; s=arc-20240605;
        b=H0P3A/agWmEjUdHW5gutP+TlZHRpmS7Aie9gwDgJdpxuU5ftnOQjxTO5VfNT/NOcu5
         FIfJTmVcBVXr0tE5/IAZNJsxOCSDv/XICm3KfYIm9UFXC8ASvWfLqLBHdvLMMDxMlrCz
         vpdGzPFO+580461Kr2XqzeXquEiwtigpH71S5LynvnEdBjW6Q1mnBPqAA4ZoJlQRanVi
         eP9hUudSy5Ugx9qxSfodYR4zfs8l2kw0n077+JBcH8k+2UwbAaao6dqrxQ0QCHcb/K49
         rGFCE9aLWPcgNy0kG+fA83leQP2I/GM2dofxWvoafBxujDvJfmzPKXXzuxCLeQQov8X4
         DEew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gIxQg6DsnZONkYjHm5jdNFwIk0EFbLgx7IY1qAIOmkM=;
        fh=/LqptbM2ZqiryJ8fdl6jGhX/2yuvMu92zqEFXkQ0mnE=;
        b=KcEt+iz+BLwmULg6PJXjLgGjObLHgriVZnpXSSAjooWuZ4uwgwlX0aNFLMiZIv0AQj
         l5nBcejC/0go1M1TWpkQVS6ETD8IQ7ObROTqamcq1ZV5zLYc5d37+BrClaxaKEY7Js4l
         XnvREH0kSpdk/GwzBwFaBEI+njz6rU/3J1E1wihOfZET8LEqsK8/tNx8ycopqpiaNPZ9
         cBk5/h8mzxHa9F05bDXiXbesnh4BPFOnc0gQ4IdYhWRD8tb5Ruyzw37chCobjFZD6IIU
         yVwqhjGDc8TvvY8SZTwk8XZIji4gXEm3BEGd38H4ndMQOmaKqa5qe+WyhTaKxnE8nMmP
         WnsQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=aaTeGECj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 46e09a7af769-72a2dc03d8esi6776724a34.285.2025.03.11.02.48.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 02:48:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id ECDB95C0152;
	Tue, 11 Mar 2025 09:45:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10079C4CEE9;
	Tue, 11 Mar 2025 09:48:13 +0000 (UTC)
Date: Tue, 11 Mar 2025 10:48:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Xin Dai <daixin_tkzc@163.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: Fix `us->iobuf` size for BOT
 transmission to prevent memory overflow
Message-ID: <2025031142-squealer-shaded-7ef7@gregkh>
References: <20250311084111.322351-1-daixin_tkzc@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250311084111.322351-1-daixin_tkzc@163.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=aaTeGECj;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
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

On Tue, Mar 11, 2025 at 04:41:11PM +0800, Xin Dai wrote:
> When the DWC2 controller detects a packet Babble Error, where a device
> transmits more data over USB than the host controller anticipates for a
> transaction. It follows this process:
> 
> 1. The interrupt handler marks the transfer result of the URB as
>    `OVERFLOW` and returns it to the USB storage driver.
> 2. The USB storage driver interprets the data phase transfer result of
>    the BOT (Bulk-Only Transport) as `USB_STOR_XFER_LONG`.
> 3. The USB storage driver initiates the CSW (Command Status Wrapper)
>    phase of the BOT, requests an IN transaction, and retrieves the
>    execution status of the corresponding CBW (Command Block Wrapper)
>    command.
> 4. The USB storage driver evaluates the CSW and finds it does not meet
>    expectations. It marks the entire BOT transfer result as
>    `USB_STOR_XFER_ERROR` and notifies the SCSI layer that a `DID_ERROR`
>    has occurred during the transfer.
> 5. The USB storage driver requests the DWC2 controller to initiate a
>    port reset, notifying the device of an issue with the previous
>    transmission.
> 6. The SCSI layer implements a retransmission mechanism.
> 
> In step 3, the device remains unaware of the Babble Error until the
> connected port is reset. We observed that the device continues to send
> 512 bytes of data to the host (according to the BBB Transport protocol,
> it should send only 13 bytes). However, the USB storage driver
> pre-allocates a default buffer size of 64 bytes for CBW/CSW, posing a
> risk of memory overflow. To mitigate this risk, we have adjusted the
> buffer size to 512 bytes to prevent potential errors.

Where is this memory being overflowed?  I see it being used in the
usb_stor_CB_transport() call, should we just be checking the buffer size
there?

Your change just bumps the buffer up, it does not actually check any
tests for when the buffer is written to, which feels like it is not the
correct fix.  What's to prevent a device from sending a bigger message
to overflow it?

But again, where exactly is the overflow happening?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025031142-squealer-shaded-7ef7%40gregkh.
