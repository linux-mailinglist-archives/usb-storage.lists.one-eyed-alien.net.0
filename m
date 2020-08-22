Return-Path: <usb-storage+bncBDRZXY4CYYORBBWRQT5AKGQE3H5GBGQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vs1-xe48.google.com (mail-vs1-xe48.google.com [IPv6:2607:f8b0:4864:20::e48])
	by mail.lfdr.de (Postfix) with ESMTPS id B481324E7C9
	for <lists+usb-storage@lfdr.de>; Sat, 22 Aug 2020 16:15:35 +0200 (CEST)
Received: by mail-vs1-xe48.google.com with SMTP id m2sf1018838vsc.16
        for <lists+usb-storage@lfdr.de>; Sat, 22 Aug 2020 07:15:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598105734; cv=pass;
        d=google.com; s=arc-20160816;
        b=qKB05WNq6sRM+CPWAr/Hs1Nsxjx5U70rVWtlnU8PtDpLf9IYJ5fZwBE9zBkcSngDVH
         DkLUKsnD89Lx+hsL9wUR8hTb8JrvI6PzGsoIaaTWYQcyNmLlhcs+kHNXyvHKlHbkw6h2
         GgWPcJJeK3MR2o/z2w/SPNiXPrPZmd8IjbnJjYOchYuqlgXyyluyTuRHyxRTUCdzgWWy
         lUr25VPBPZHEmLyNScd5SF5OH6lokkvuDVeNluwRClOuiYwczz7KvB29pZv0AH1t3n7f
         e/btydtO9Ez/lWb1rtcGDI1/6tZxVQSC7nvYEN7b2DR9o4CEczcH80dhm6w6Mxs9gZEA
         XIPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=ombI70ZRbvOq3YE52uYQrebJcjGNbaJItLKnfyiwn+0=;
        b=A7Cnj1MkDPRGXvFwxgZbZl8yFsR2IksVrAw7e/qHQrq3KzmUYIonWegjKcxE6HTefk
         ftpYqrIIcyOAY8VsqcdHvPYpYpo5Zc+8uSDBWcjq8TCTH1LvGfA32TM+ZC80H75K6L24
         dB3d+c216WNFf049+30RqCneuo2IOvKJKlWeDJN8Wq/arU0KnKRVWiHlUYJ9SF5T6G7K
         EE7ia97thClofNakMN5Wmb5oys2OudlrfZm+UCwpeZdsftidreI0r6uT6zef1nS4elVv
         GphTy6WLG//yqtFeHuGVsRXkoYvhpvfA8RmCI7p40phNIe3sQgP1w3xsFRVrCIzIFx9z
         greg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dDaz0+rE;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ombI70ZRbvOq3YE52uYQrebJcjGNbaJItLKnfyiwn+0=;
        b=idqXy+9XzvH/b0jkXenhyKzC6K07cwFdl/nKpBknAAmnrwz5lruxH+wWMV4wiJzUEI
         +fLypQkEnyBtilgH1/ebINAJ8N3SetMHIHROLy8nrO3IjrdIjJxRbKaz76xgwsLdgM8C
         Eq84KXjjKJNGnyFRJTyhn4Ii4jN4NyICVRbpE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ombI70ZRbvOq3YE52uYQrebJcjGNbaJItLKnfyiwn+0=;
        b=JRLj9TJKtFCIbmPSe9iQk85Z8tGBZQ05KHvA9Vo/R8x9+8zSR4inwo2lNAz0Xo361n
         B2Y1fOJWqgMlQdOn4cLJQbygP/jycSTpSNCuglqN1NTxriwqTlzJO9UbW7J4RTYZQwMu
         LHrttX2LRjNT/WVaq9CI3gH82iLxRgih0cuFRIHNm5x3EH2A67hHW0cqgJEDZZHcFFBT
         fisBX+kw6g/4GHKhEhgjSsEaHaCIB9sTdlrjshRzTOwY+UFjav8xtFR3OrOW+46arjQa
         KB2ZDzKswwJ92EHcfZywxzLNgqsS/DUl0K4QnbeBmC6PLbIQAB0mTX5m4F8AwrzbERNf
         fuow==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531AOmXIksWmitSwkRnZIcpdf7Atgig8SiAAVPgLAMl07jgPZAFP
	GotilRhj58xrm2wVQMPTbuXBOw==
X-Google-Smtp-Source: ABdhPJx9bcWrMRjbjTnGAJod7nINdhFlYSWudf7THshENjL+U0z63RDhaqECwVHBd1fjsLqSlBiU1A==
X-Received: by 2002:ac5:c7a2:: with SMTP id d2mr4484564vkn.93.1598105734587;
        Sat, 22 Aug 2020 07:15:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ab0:4ea6:: with SMTP id l38ls43612uah.1.gmail; Sat, 22 Aug
 2020 07:15:34 -0700 (PDT)
X-Received: by 2002:a9f:35d0:: with SMTP id u16mr4033497uad.113.1598105733904;
        Sat, 22 Aug 2020 07:15:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598105733; cv=none;
        d=google.com; s=arc-20160816;
        b=jLemDDtEBZ246Fj71GMxifLvuwGmhDOUU4FkQldkgp/QI28IuOU9zJlA0Ot5uyPuXy
         epf7OTy7EbwCxTia+sKDs3UaMwYNdVOpJCn2pS1/n9ELwZzVMCkI133PJPsPx/lVNGYC
         uO56SNdbdelsiurTeYo1GEuLxnk8ZhzdPekwa/NUbrm1omjSHiZINR4PohGzPywOuFr/
         VqqGmD4sKMq9EhtO4lSXyfPzYwS4V40LOV/FnoqVgFk4eSptaCMRodJmqXiYEtG1Ij2Z
         zs1dRQfYJ0DdexbIkx5vb6tN0xm7Bpl71aEgEixVP2X598L6L5EbqbSHxNe+IIhZdVio
         zQFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=JV/kqhMMNVm2hgOeYtw9b34lpsa9RQ6l73NIRdxZMHk=;
        b=DlBxPtcwc4A75yDLttc9x+F+kjKk07dYD+UdLzVINCEPEP0l/GIf0fVpmU3I3CuIhS
         LVGkZR+eC7zSxXE+N0hLN1UZFDJ8LEgGHcAVKLY+Q9dS/a0Yuf8w74cQsG7ERQveex7E
         6MIDP+Ds08BulnZPGWLSzuDJ1ykgkCgFX1E3r0CIkc7mEj8TmLuDkF0CCcPGlc2VvZKI
         Usi5Md1vKDLljtgHfwva82ex3c8RAFd0TKo2uCcLhFzNmG8UgYsLA8ZY5rVqX28aiWIL
         k+4WOfrbej9ZlHqv/zqLrwtSv7ZGu1ROQtNEWwui3o7owULwEY5FEBpxjxIyOG68kY5b
         terg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dDaz0+rE;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by mx.google.com with ESMTPS id b28si121185uaj.24.2020.08.22.07.15.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 07:15:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-50-GFMHSDW_Pnq0TRy47zQ4Rw-1; Sat, 22 Aug 2020 10:15:31 -0400
X-MC-Unique: GFMHSDW_Pnq0TRy47zQ4Rw-1
Received: by mail-ed1-f72.google.com with SMTP id p7so1689595edm.5
        for <usb-storage@lists.one-eyed-alien.net>; Sat, 22 Aug 2020 07:15:31 -0700 (PDT)
X-Received: by 2002:aa7:ca44:: with SMTP id j4mr450932edt.222.1598105727297;
        Sat, 22 Aug 2020 07:15:27 -0700 (PDT)
X-Received: by 2002:aa7:ca44:: with SMTP id j4mr450916edt.222.1598105727092;
        Sat, 22 Aug 2020 07:15:27 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl. [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
        by smtp.gmail.com with ESMTPSA id a11sm3312202ejt.107.2020.08.22.07.15.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 07:15:26 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] usb: uas: Add quirk for PNY Pro Elite
To: Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, usb-storage@lists.one-eyed-alien.net
Cc: stable@vger.kernel.org, Oliver Neukum <oneukum@suse.com>
References: <2b0585228b003eedcc82db84697b31477df152e0.1597803605.git.thinhn@synopsys.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <4a8bdf55-2111-af21-4b44-ed718d965ebc@redhat.com>
Date: Sat, 22 Aug 2020 16:15:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2b0585228b003eedcc82db84697b31477df152e0.1597803605.git.thinhn@synopsys.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=dDaz0+rE;
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

On 8/19/20 4:27 AM, Thinh Nguyen wrote:
> PNY Pro Elite USB 3.1 Gen 2 device (SSD) doesn't respond to ATA_12
> pass-through command (i.e. it just hangs). If it doesn't support this
> command, it should respond properly to the host. Let's just add a quirk
> to be able to move forward with other operations.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Thinh Nguyen <thinhn@synopsys.com>

Patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
>   drivers/usb/storage/unusual_uas.h | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 162b09d69f62..971f8a4354c8 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -80,6 +80,13 @@ UNUSUAL_DEV(0x152d, 0x0578, 0x0000, 0x9999,
>   		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>   		US_FL_BROKEN_FUA),
>   
> +/* Reported-by: Thinh Nguyen <thinhn@synopsys.com> */
> +UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
> +		"PNY",
> +		"Pro Elite SSD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_NO_ATA_1X),
> +
>   /* Reported-by: Hans de Goede <hdegoede@redhat.com> */
>   UNUSUAL_DEV(0x2109, 0x0711, 0x0000, 0x9999,
>   		"VIA",
> 
> base-commit: d5643d2249b279077427b2c2b2ffae9b70c95b0b
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/4a8bdf55-2111-af21-4b44-ed718d965ebc%40redhat.com.
