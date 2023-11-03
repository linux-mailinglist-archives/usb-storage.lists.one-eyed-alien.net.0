Return-Path: <usb-storage+bncBD6LRVPZ6YGRB2FQSWVAMGQELDXBP7Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x147.google.com (mail-lf1-x147.google.com [IPv6:2a00:1450:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 8655A7E0A51
	for <lists+usb-storage@lfdr.de>; Fri,  3 Nov 2023 21:30:33 +0100 (CET)
Received: by mail-lf1-x147.google.com with SMTP id 2adb3069b0e04-507ce973a03sf2410428e87.3
        for <lists+usb-storage@lfdr.de>; Fri, 03 Nov 2023 13:30:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1699043433; cv=pass;
        d=google.com; s=arc-20160816;
        b=g63aXRKQgvVuvmSnU+jAOHN+V0BZTcP/RCFbv9qb3O2c1sVobcOt+4YCNni38Qr2ed
         ncDCbqGBVGFFNlHRKsPbEqaaa8vtpkT0pr7wu7C+PPTjmtTk2+ok+XP1w3cSjrPOHZRT
         fLqqzrd/HXLDU5NiDLMllGRp87b9tY73loWMavYiuYCsifameM/a6oFs0kUhM4smUge3
         NR03iRXBcpHQTgG1Jsdx4wXX0Y7ahnLlZEaozISPub0mp60rL6laGj2E/W4PTnoSlirk
         Ky2jKAftZFStQkAPXhKJPLXQdFnYBhP7lYCg0Kl0hv5Q1p5HHUJB9HlTPft/djrLt2xy
         ZOwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ujTVjnVQaiIm9KqNR1kWiZgS5LfyRzcPoVKtr2ppNaQ=;
        fh=ldCGyavYp779X2ViOANHPzjiMm1aqt/1VlioTkK72aI=;
        b=U0hbbvGWoim5j753bw1x9BNGQJdjOwBO6SpL+MytgmA4PRjjkQ7BpSKM/6XqdyIEGp
         WPHREXM0LZjqGo62TMZ9N5uef5rAu5f0oOrajE3v/bPZpcQnoNukDeu8MbzrL6HyGC4U
         FJoxocZK9MWt7h5rwGg2vi3XHPEr8pyUd9qZYfcUG+weGXkBvo6EZvZFNWCekjyll7oI
         hL0qGXESKgMRfcGW0PO/Zl3tI88iGrVl5M/W/9EQCMvNSVmTMWk0hkwqMhUgV9JYJBSb
         E31eMcbff5Aq2EXRlpZStz4QH/zKBh3FTNkr5pxl8YsovFm53xUkDMdfd4srZ7V99dtb
         C06w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6553b73e@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6553b73e@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1699043433; x=1699648233; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ujTVjnVQaiIm9KqNR1kWiZgS5LfyRzcPoVKtr2ppNaQ=;
        b=dYsr8JMvaa7QMLDJZZEkuxzVg2+Eo5SZCLoF1KXggfAxm8qrWdpZvZ/RV0hkg4CqFr
         4EhUnnM/IRmfJYJFcE4xna9qrCPPoS+gr/WRaMXp7I5ETLSJIF0oip2cRvpiGnfNoC2j
         uG8F+/tk1EZ74RUf/ojjqkvGmjqggr+IFFqUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699043433; x=1699648233;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ujTVjnVQaiIm9KqNR1kWiZgS5LfyRzcPoVKtr2ppNaQ=;
        b=fO2OMNcSmVdEEKQZeGB5Kf22+wduMXi1V+ZioW0o1ZsmlBHcscC4lNdqwCfeUMCAof
         B39X6gB81ryUMIJ85Rnqj9Ttg/oxo1HGTSsXPhxhq8HiaTS8M/vquBHClK6QjB5Y/V96
         S1eOTU4MgCQ6vk9/RiUXByUfSqrM/w8d08V2Nf2GcW3lXiVkoOuTGU3vM8Zso5z5Yirl
         3sIvWoBDRJtEP9Qv41UKfucqjseV+HVo6KPz0Wuf3kV+bfu719Idxr2aETl4hTCkk7wQ
         +DB4Ve1W4mZsdKGpwSxf2hXkb5ix3CIS/2S2p1Bvq3MNvGn/cfzL14i3FwX4XdHzjJ7A
         oOvg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YxMgVaKUBAUbU7jZoDrheexBO0StR5AGNwcx/gqOveNkGjcrPUe
	YVxhOcCiAL4Wf0lzgqT7sWo2Qw==
X-Google-Smtp-Source: AGHT+IEIEPWUVEjcYjKYOWGTnYXbwKqpdnVJgCoU67GxoOokvkYpXcsxYr09PVMlLiHvSOhtGTKfew==
X-Received: by 2002:a05:6512:312f:b0:509:4556:471b with SMTP id p15-20020a056512312f00b005094556471bmr5379885lfd.53.1699043432707;
        Fri, 03 Nov 2023 13:30:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6000:1a88:b0:32d:4873:8b13 with SMTP id
 f8-20020a0560001a8800b0032d48738b13ls879038wry.2.-pod-prod-07-eu; Fri, 03 Nov
 2023 13:30:31 -0700 (PDT)
X-Received: by 2002:a05:6000:1287:b0:32d:aa56:c0c7 with SMTP id f7-20020a056000128700b0032daa56c0c7mr15830177wrx.54.1699043430853;
        Fri, 03 Nov 2023 13:30:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1699043430; cv=none;
        d=google.com; s=arc-20160816;
        b=RGR+BbXTLjAOhJWrTep4xY1aWSeASjFRh7Ypo8v5nhHdMII+DZS5dVrHIGZPyHLqXB
         OyJbUtN7Pe0IRG12k3DRAdSNGUqbH7Uh1acVswSUPn/u9mgBrm8tTwnqjdmWs06wY0hJ
         1bao7+1MiV4z1WA7e1Ju715/ro7JgIgRzba2HCzJFyes2k/5Q6ACsQAU/pb6EYqyInxq
         p/PBA+47wzpDN6FOSyOWukGZbVOLPC0zhylA+CZ5zo5n+0J1jL3OMdfLx47hwHwHoti0
         Ay90YZMK5JBCXIcnGxvOTpSvMZvM8JRxbUSzxXcUdBkbW8hrbl+VMUQ9hOBRalnglTBD
         K1Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=wtQHFj/5eXKHR6HWiRw+mnOgAqvvJfY9s5uFrYFiYTo=;
        fh=ldCGyavYp779X2ViOANHPzjiMm1aqt/1VlioTkK72aI=;
        b=GZnQstooQFcbRyoLUBK+YBYbA1C5q4577dfr1nYUxo+Cx6ScR0b/HdcVlUmrXpbkOU
         8R+SytmDH0STQl5I0t2W8A0HgYwhQl38lHbclvyC9iSqwjzjcyPrc4WghcfsY5IFAl8A
         kMywhAo9ks/7/5Hf/5DDU4w5YQEVGkFm08Z6hZDQpKy8Tbvd2cWCJoQDftpIctZLGLzN
         /OtTHZJNwlpBr7uHRDSqu8hVyfbWfMcgmER+996BSS5d6zkA/yb5ZWKTaqz45x4eOv8W
         8AUA9/WeCgFuc5bFrqs7HjnxxgxQ9hScU2rHLN/daHxZqyKM4Yn8L5no+L/WKhYhI15m
         IFOw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6553b73e@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6553b73e@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id k6-20020adff286000000b0032330e023d2si1763488wro.966.2023.11.03.13.30.30
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 03 Nov 2023 13:30:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6553b73e@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 862000 invoked by uid 1000); 3 Nov 2023 16:30:29 -0400
Date: Fri, 3 Nov 2023 16:30:29 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, gregkh@linuxfoundation.org, oneukum@suse.com
Subject: [usb-storage] Re: [PATCH v5] usb-storage,uas: use host helper to
 generate driver info
Message-ID: <d26c884e-3505-436f-9a76-ec701fb5e2bb@rowland.harvard.edu>
References: <20231028174145.691523-1-gmazyland@gmail.com>
 <20231103201709.124372-1-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231103201709.124372-1-gmazyland@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6553b73e@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6553b73e@netrider.rowland.org;
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

On Fri, Nov 03, 2023 at 09:17:09PM +0100, Milan Broz wrote:
> The USB mass storage quirks flags can be stored in driver_info in
> a 32-bit integer (unsigned long on 32-bit platforms).
> As this attribute cannot be enlarged, we need to use some form
> of translation of 64-bit quirk bits.
> 
> This problem was discussed on the USB list
> https://lore.kernel.org/linux-usb/f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com/
> 
> The initial solution to use a static array extensively increased the size
> of the kernel module, so I decided to try the second suggested solution:
> generate a table by host-compiled program and use bit 31 to indicate
> that the value is an index, not the actual value.
> 
> This patch adds a host-compiled program that processes unusual_devs.h
> (and unusual_uas.h) and generates files usb-ids.c and usb-ids-uas.c
> (for pre-processed USB device table with 32-bit device info).
> These files also contain a generated translation table for driver_info
> to 64-bit values.
> 
> The translation function is used only in usb-storage and uas modules; all
> other USB storage modules store flags directly, using only 32-bit flags.
> 
> For 64-bit platforms, where unsigned long is 64-bit, we do not need to
> convert quirk flags to 32-bit index; the translation function there uses
> flags directly.
> 
> Signed-off-by: Milan Broz <gmazyland@gmail.com>
> ---

Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d26c884e-3505-436f-9a76-ec701fb5e2bb%40rowland.harvard.edu.
