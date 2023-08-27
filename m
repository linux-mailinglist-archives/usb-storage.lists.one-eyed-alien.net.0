Return-Path: <usb-storage+bncBD6LRVPZ6YGRBN7BVWTQMGQEA26MJ6I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2D278A011
	for <lists+usb-storage@lfdr.de>; Sun, 27 Aug 2023 17:50:16 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-5218b9647a8sf1870534a12.1
        for <lists+usb-storage@lfdr.de>; Sun, 27 Aug 2023 08:50:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1693151416; cv=pass;
        d=google.com; s=arc-20160816;
        b=aJy+PbccjyQM+6S9hKz5GIp4FPsepz49MF3GsCe9bomGzxNe4odCJ0QQETPyMZjO5w
         b6iZnUUngzYjXnWKCYfczo80X5o+0cvvK2ccmT8rj4pamhSYAQW0DxcO1K+AAZq9XFvG
         gDf3xQn04rmOOlJr+gmgVjcwOVmap61MLpWAMecDipYwI/BR093FLWGbd6j2VEy2qc+T
         JBdX4XwA+ZkGMJYLw/NpSkikfi7/3H3KiW/zFpJwV5snpwXd+L5YiS7OOzuLD5vxF30/
         TcbnP2gQ2+i3kGlbOQoLhWSkluVtf7tFuvmDxjxf9xLHOpoQYN/sSFAloA6AyghfDxa1
         cOuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fc7GxZsA68s08xoFyUgOuNnJSD16ybivcKDkgbYEUps=;
        fh=FH8zCkCskAXn4EMDJCljC5Aqm7Ed1W6hIChHJnDO33o=;
        b=JrUxnkhl9QUHywiGP+J26CykCv4iOd+Kcpt0dlbIzCBYZ+9kVgibq4Y8YyA6/zS+7J
         IXYbBqqZO3ir+7gzDQVglC7t18Kg+CwwuOWQ2/tv6xTyEPVSIoAuMsyjDorSs7IeXUEm
         T71fLiQ6oF71VJicJvZepTzRoBYAe8tiWbaX5TXFnIHI5TZA+Lkp0mxZCiqnqKpwvtLb
         4fNyw9Ant5/QhjLl0lUegHnshz2rvhwQ9ISOi1JqCxz0gMnsMGZLmI3iZDeq36S1SlXy
         SbjXlFpg34z3AaEcBWQlpR1RYMhrp3FI/hfF0W6MFP23rkabvEZrqOla7CLitDt4VGlW
         Mz3A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+64ebdad8@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+64ebdad8@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1693151416; x=1693756216;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fc7GxZsA68s08xoFyUgOuNnJSD16ybivcKDkgbYEUps=;
        b=VyDuO+MUPlwSD5pbOXFcM53jR1AJoLhY8LLrypqWskvUDyO38Gp26CfUXYFZ0B1dZu
         S2g0Kh2ZWHI9+mqnpx1wnu53yDR8p23kyovlmkOBaZQ2Uvrz0n2W2m08Su/ikZwssctO
         Fndb99/z6MOsLTW8hczKHWg1CplloiP6VHL/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693151416; x=1693756216;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fc7GxZsA68s08xoFyUgOuNnJSD16ybivcKDkgbYEUps=;
        b=iDuuwvOMh0lMy0vIRYR6ofH6ULNJ8WmxjRPJ0Mg/hpLpOC403zF4yGdjlS+pngmS4a
         WGNul1msX3vBnwMf7yMlFzpGfTLf1HvHgK3BN2173Om9IVCflk8XtWhgP9dFhDBEPU/m
         fpq87ow/GxOccuLP528RcDMajbgdkmPVcUhCjYWDaPzFC43ON3tg0gWvsRf0Uf9MCeYd
         h2CqKL/ZHa6vui6M1iHU7C0hb1RuLODh4LwDUm9YeXy1FJQSfOB/KhNIPA1c2b+zgDPX
         vthgiWoasgr0zSgqmt1muuk7B/Ew8IXgAkcgMpATITBBLV2hMy1eOW8qWM8TU2eshy+Z
         hfRg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YzFHoDdbeUUHk75NZAHk2ggkgrvmAXcDop9IhMDDeSzxRCDmNfC
	S2aYQ9wKCKVuWNGL1U7SG6b7vw==
X-Google-Smtp-Source: AGHT+IFhXvqotGKGTjT9mBX3akzf+B0iqP/J76xFsxbkZ/y8EREcUTcqh2Y6u4zGAVSGCQYZ2Ay0Qg==
X-Received: by 2002:aa7:cf99:0:b0:525:45dc:40b7 with SMTP id z25-20020aa7cf99000000b0052545dc40b7mr15372208edx.17.1693151416041;
        Sun, 27 Aug 2023 08:50:16 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:716:b0:525:455e:f9e1 with SMTP id
 w22-20020a056402071600b00525455ef9e1ls1058982edx.1.-pod-prod-07-eu; Sun, 27
 Aug 2023 08:50:14 -0700 (PDT)
X-Received: by 2002:a17:906:73c7:b0:9a1:e758:fc70 with SMTP id n7-20020a17090673c700b009a1e758fc70mr8447402ejl.77.1693151414186;
        Sun, 27 Aug 2023 08:50:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1693151414; cv=none;
        d=google.com; s=arc-20160816;
        b=oFLEBYKFlHCdp1LnXoxmM4IVqjjHKR7m397t+MKpmw0hpnHPBtqasPuPNRFOiw28lF
         dVjKKzTXS7omG4bg3m9HkYa+51DZUGVpPZDtqcycHjqjTl/bD6ODKFFSNAvz/6V4YIpl
         3mB3QaefdbBYm22gvbmU1Pf9Fmi8nB5L87NLxGl3ZRR6K2B4siPf8OCKXoWGJI4YT3Bv
         rMSSiGPnA1Xb628d8n4hQv87BS1q4iCfom5p7KAn4DJbNt4SrXmRt/+4YAdKbMnSp24C
         Jcu8g/tQKCyRnno0p8dynkxMWJ+c0tkOJr5C6zVCRIHJ4M4L6w7ffK1VPW8iMI3Y8USA
         wSDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=S5fZuRzwa3G8iAeTCevpYwJx8ThZzUWVKRjEeZrkmrU=;
        fh=qTdisJEfMqbgJskV0UcI72UIEpNP3qVHasTo27t2Qnw=;
        b=On5Pi46dniaUuQPvPrRzS61KM61wpt/TFpeFcXpLqiPfonC+76ODAvBPwwGPlOY2jQ
         V4WuL/zqfCW8wJdSe0Jv2X+SoaUr0PV2Okg1MYPjn3LUiVYdZBWaAxgkH7CCBpF4567C
         JYpiyFWUonD/5GIn2fOVeTScEIgqasCV2RpXctrjeP4G5rLgmG7sHIuKYo5Nql8zNJ3y
         a3oR5acocAEr5Nvp9NFVmyCHyFOiL6Cc2nVFvkTDuZPti7BFU+9d0m7DLggzBwcO8GRo
         6vTrF3gw8vTR8V+EiZmFgnJuHAj0JMZDpdVse7B5xReMUAul6caP4eqDx4l7YKMcWGEy
         0pCg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+64ebdad8@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+64ebdad8@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id y24-20020a170906471800b009823816586esi3317396ejq.500.2023.08.27.08.50.13
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 27 Aug 2023 08:50:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+64ebdad8@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 320883 invoked by uid 1000); 27 Aug 2023 11:50:12 -0400
Date: Sun, 27 Aug 2023 11:50:12 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: usb-storage: how to extend quirks flags to 64bit?
Message-ID: <6f8b825b-bc41-4080-8128-4a6f0a43f779@rowland.harvard.edu>
References: <f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+64ebdad8@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+64ebdad8@netrider.rowland.org;
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

On Sun, Aug 27, 2023 at 11:32:05AM +0200, Milan Broz wrote:
> Hello,
> 
> I tried to extend USB storage for the passthrough of Opal
> security commands,

What sort of changes are needed?  Where is this passthrough mechanism 
documented?

>  and some adapters are clearly "not perfect".

Which ones?

> I would need to introduce a new quirks flag to turn it off.
> 
> Seems that we are already out of quirks flags on 32bit
> for usb storage - in usb_usual.h the last entry in mainline is
>   US_FLAG(SENSE_AFTER_SYNC, 0x80000000)
> 
> Adding a new flag will work for 64-bit systems but not
> for platforms with 32-bit unsigned long like i686.
> 
> How do we allow new flag definitions?
> 
> Struct us_data fflags can be made 64bit (defined in
> drivers/usb/storage/usb.h), but the major problem is that these
> are transferred through the generic driver_info field
> defined in linux/mod_devicetable.h as unsigned long).
> Making this 64bit is IMO an extensive API change (if even possible).
> I guess this is not the way to go.
> 
> Could USB maintainers please help to advise what is the correct
> solution? I am not familiar with the USB driver model here
> and I see no easy way how it can be solved by a trivial static
> allocation inside the USB storage driver.
> 
> Someone will need a new quirks flag in the future anyway... :)

I can think of only one way to accomplish this on 32-bit systems: Change 
the driver_info field from a bit array to an index into a static table 
of 64-bit flags values.  Each unusual_devs structure would have its own 
entry in this table.  As far as I can tell, the other unusual_*.h tables
could retain their current driver_info interpretations, since no new 
quirk bits are likely to be relevant to them.

Making this change would be an awkward nuisance, but it should be 
doable.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6f8b825b-bc41-4080-8128-4a6f0a43f779%40rowland.harvard.edu.
