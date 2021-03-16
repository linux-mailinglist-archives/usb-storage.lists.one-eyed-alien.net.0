Return-Path: <usb-storage+bncBDRZXY4CYYORBPOAYOBAMGQEOV5RDAY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 976F133D9B5
	for <lists+usb-storage@lfdr.de>; Tue, 16 Mar 2021 17:43:41 +0100 (CET)
Received: by mail-ed1-x545.google.com with SMTP id n20sf18036423edr.8
        for <lists+usb-storage@lfdr.de>; Tue, 16 Mar 2021 09:43:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615913021; cv=pass;
        d=google.com; s=arc-20160816;
        b=0GfsYhM9wu1/vDsSZiUdm2pT+h3wzNNjPkjiQyg6Y274Y+muOJh8UZAUvm0GatBkbd
         2Jg2EMegpoMMrfjDFeUaFJ/uQGxKdCZZCutTIt/YMuqygXOIPV/En7GdP4MO94vEh/iA
         s9NeS8D2MGSqiGe+W/wbDyVHI9L2HrttvRwb23NrW07LGHZQTCWyQGbrjn0yKox4ovv7
         l5jiRVRYKwoaY9K+WKzWXZaKgnZZV3Q1mkmjG96ci9Tn0HeEl3GYneQ/w0dFzBGFgfYi
         7ZNOLtFlghfbIp4L0+TmNLmfWW9QcBpnmx3nCiwHR73W7n+WsQFcCGvmNsBqjwSKtuZG
         6bzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=4RMp2GD+JBjEGrtTgks2F8gllE2wbL5t09yZlMEXwDw=;
        b=dgp9yYmHbpkfb+1cO4FWvDH5C9zqD4c9MElksoq6KSki/M3bIMQG/9URBorA+auiNp
         Rz6vAA9WxkOd7g8p9QPtLatsRSLrKmMtC8QUBiE2mMJjS6Gzj4ncA6KyfxweWn/uIHps
         r+X0wWXIQsd2ui6cwLOknoPiKz2AFDncicCqTHfupYTWWzFpt2bfPtN6U11lUpFjRLZ6
         90Yxpadw+4NZdEi7oG/x9VSwASYgbi1Ao8O4fW1O0JaSm3s2AqknOP3+CaTPop2/9IIK
         /Ol0gqXFI/KThXPUrqdZ2SNK0aSdSLCmlH7YInaC2JSbo9XEsqLFZPW94gtIMNL/5Cil
         wQaA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="E/0m6Ccs";
       spf=pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4RMp2GD+JBjEGrtTgks2F8gllE2wbL5t09yZlMEXwDw=;
        b=HyAZil55YCOXoDBNoV0Q/XioWb77UAQFvuXb3KG9C6HBafIu1qQbiPzFue4gDZKocK
         IGqRGBHfK3HLFf4OsuspEXbB71t98br9/mht+Ot6EKEwWZOxscjEEZOjWGPxpmOZnCS8
         Y+xjETO+OcJZSndL61mVoT7Ru5jWFSBKMoB8o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4RMp2GD+JBjEGrtTgks2F8gllE2wbL5t09yZlMEXwDw=;
        b=IpG93CA2XFok/tElvCDHOG+XL1GnT6bEwCbHXAx0xkmGpqkLBNuMjWaGHZautwbmMW
         0mkEAgjmjG89Mw1onlOE2w3P0c+lZialbyZAN4ReGjM/Nc2Vc6mSTI0G1NxQJe0ZsCSY
         ElUK6ZaRVsfbeuxTZGyruhlapzpuThCBBMKTHBFE2jpowvXgbSLsGj4Eln7AHW+DmCeG
         YTVnpn5ZyfNXinP5YGqaL5Z8pChHm0VXuqtB7M7JGp8rx/aAJJCv4juiuyA8TwNXNYBX
         nzbysrvlSAoQU+L08QKMLoymoV7Yg0XBmzDfvkJsXZ8ZZxPXBK4JFW7LKMqdMQQQNugO
         GMcA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533XJH12kYwx0m+3J/lqruUAm93fgfgKbd67t2O7AWSgyv0Dm+iZ
	CAG6ITq+VTdgTm65htAN/itjXQ==
X-Google-Smtp-Source: ABdhPJxMddSh/dEEHq2FR9YSxuufj+SxV3OvnGM+HutLNi6yQEO9LpMYTGIG3Bp2zF+w8uelxbLN8w==
X-Received: by 2002:a17:906:4410:: with SMTP id x16mr30884681ejo.446.1615913021344;
        Tue, 16 Mar 2021 09:43:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3592:: with SMTP id y18ls6985330edc.0.gmail; Tue,
 16 Mar 2021 09:43:40 -0700 (PDT)
X-Received: by 2002:a05:6402:1a4f:: with SMTP id bf15mr37359730edb.304.1615913020190;
        Tue, 16 Mar 2021 09:43:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615913020; cv=none;
        d=google.com; s=arc-20160816;
        b=Z0/dI6Swc7N5gWslhx9QcK6cL4c0WCFL5ZjZw1FkFV2FXv0gk0a21g5+WHm3v49Gm8
         QTKyk96Ke9ICDEo3jQnNKdL3M8QAqXjF43OOd1Rg+oxUMA/jorq7YvNbWAAq/e1vUApW
         uWaUBW+SnL0YLo8GqfWuheiwFGSH3zkbxZQbnhdXUPXrcMgAKGKatBAdqRQdqmU7+5aO
         41MvtLjeBaqeWqJETg7SZyzKTpWqVTP4eU20GJGYD4w3VvvR+W7+awMPd6xrRt6PIRlB
         ArG4SxJSR6q7SlrKZAnqJGjBRVwzA7akVawW6u290z7OQ7x3v8yDC21tdnM18HTm+3tT
         Vs7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=UrdHJs7L6b/Q0U+QgknNULaiIskOvwSN+cs2j2q2uE8=;
        b=yKlqJrfK9l5eoVIGT03gMNwrKVEwOpZYJ2ymhrJEeWpKMkcrJRLkxfH8Nka+Z53cO2
         cg3x44lS9Dy8riPVWjAxMRE7sVAwfa5j4LMZBLSB3dnQ932DCXi5Biq1uDHjBjRlpEmx
         Ezr5jwZ32qsm87m6ma+VWCQfu/i5p27KPM9to3VZ1B6EoHAawgRqUKU/oIwNUcrmkMP3
         qJKGUB6d2erG4gqPXaYc9hYr99YDuFSkC4sK7JBUD/CKi1t+xf/SYQdyw9H/smTImko4
         j7GB+WQNs/6T55N1jMH5N3TOCQoZmYUqy1MmCEQNiOFCI9dSertQJekBWK8E532sp5kC
         XeUw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="E/0m6Ccs";
       spf=pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by mx.google.com with ESMTPS id u4si13922369ejy.135.2021.03.16.09.43.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Mar 2021 09:43:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-470--ZUbdpCwOdK6ZsiDxYWV1g-1; Tue, 16 Mar 2021 12:43:36 -0400
X-MC-Unique: -ZUbdpCwOdK6ZsiDxYWV1g-1
Received: by mail-ed1-f71.google.com with SMTP id h2so17859804edw.10
        for <usb-storage@lists.one-eyed-alien.net>; Tue, 16 Mar 2021 09:43:36 -0700 (PDT)
X-Received: by 2002:a05:6402:17d5:: with SMTP id s21mr37121060edy.65.1615913015359;
        Tue, 16 Mar 2021 09:43:35 -0700 (PDT)
X-Received: by 2002:a05:6402:17d5:: with SMTP id s21mr37121044edy.65.1615913015203;
        Tue, 16 Mar 2021 09:43:35 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id h8sm5030987ede.25.2021.03.16.09.43.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Mar 2021 09:43:34 -0700 (PDT)
Subject: Re: [systemd-devel] [usb-storage] Re: Amazon Kindle disconnect after
 Synchronize Cache
To: Alan Stern <stern@rowland.harvard.edu>,
 Matthias Schwarzott <zzam@gentoo.org>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
 systemd-devel@lists.freedesktop.org, hirofumi@mail.parknet.co.jp
References: <20210307155236.GB103559@rowland.harvard.edu>
 <9c3121a9-3d0c-60b3-ef17-993b7d2e9149@gentoo.org>
 <20210307165856.GA104554@rowland.harvard.edu>
 <268e646f-d4ea-3190-f1b9-8e69bfc1b019@gentoo.org>
 <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
Date: Tue, 16 Mar 2021 17:43:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210316162650.GB448722@rowland.harvard.edu>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="E/0m6Ccs";
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

On 3/16/21 5:26 PM, Alan Stern wrote:
> On Tue, Mar 16, 2021 at 06:26:30AM +0100, Matthias Schwarzott wrote:
>> I implemented solution 3b. This is the pullrequest for udev (systemd
>> repository):
>>
>> 	https://github.com/systemd/systemd/pull/19002
>>
>> Now Lennart asks if udev is the best place for such hacks/work-arounds?
>>
>> Well, I implemented it as suggested by Alan (see above). This was the
>> simplest of the considered alternatives. Different quirks in kernel has been
>> considered, but are more effort to be implemented.
> 
> Lennart probably isn't aware how the usb-storage driver works.  It does 
> not create commands on its own; it merely sends the commands that it 
> gets from higher SCSI layers.
> 
> It may be possible to modify the SCSI core, to make it send a TEST UNIT 
> READY command immediately following any SYNCHRONIZE CACHE to a Kindle.
> 
> However, there may be an easier solution.  usb-storage does indeed send 
> a command of its own, REQUEST SENSE, to get error data when a command 
> fails.  The patch below will make it do the same thing whenever it sends 
> a SYNCHRONIZE CACHE to a Kindle, failure or not.
> 
> The only question is whether the Kindle will regard REQUEST SENSE as a 
> sufficient indication that it shouldn't do an eject.  The only way to 
> find out is by testing the patch.
> 
> Alan Stern

Thank you for this patch, yes if this works it would IMHO be
a much better solution then the udev rule.

One question though, if this works to fix the undesired ejects,
will an actual eject (using e.g. the eject utility as say
"sudo eject /dev/sda") still be seen as an eject by the kindle
after this ?

Because that is actually kind of important for everyone using their
Kindle with Calibre, breaking that would not be good.

Regards,

Hans




> 
> 
> 
> Index: usb-devel/drivers/usb/storage/transport.c
> ===================================================================
> --- usb-devel.orig/drivers/usb/storage/transport.c
> +++ usb-devel/drivers/usb/storage/transport.c
> @@ -656,6 +656,13 @@ void usb_stor_invoke_transport(struct sc
>  		need_auto_sense = 1;
>  	}
>  
> +	/* Some devices (Kindle) require another command after SYNC CACHE */
> +	if (us->fflags & US_FL_CHECK_AFTER_SYNC &&
> +			srb->cmnd[0] == SYNCHRONIZE_CACHE) {
> +		usb_stor_dbg(us, "-- sense after SYNC CACHE\n");
> +		need_auto_sense = 1;
> +	}
> +
>  	/*
>  	 * If we have a failure, we're going to do a REQUEST_SENSE 
>  	 * automatically.  Note that we differentiate between a command
> Index: usb-devel/drivers/usb/storage/unusual_devs.h
> ===================================================================
> --- usb-devel.orig/drivers/usb/storage/unusual_devs.h
> +++ usb-devel/drivers/usb/storage/unusual_devs.h
> @@ -2212,6 +2212,18 @@ UNUSUAL_DEV( 0x1908, 0x3335, 0x0200, 0x0
>  		US_FL_NO_READ_DISC_INFO ),
>  
>  /*
> + * Reported by Matthias Schwarzott <zzam@gentoo.org>
> + * The Amazon Kindle treats SYNCHRONIZE CACHE as an indication that
> + * the host may be finished with it, and automatically ejects its
> + * media unless it receives another command within one second.
> + */
> +UNUSUAL_DEV( 0x1949, 0x0004, 0x0000, 0x9999,
> +		"Amazon",
> +		"Kindle",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_CHECK_AFTER_SYNC ),
> +
> +/*
>   * Reported by Oliver Neukum <oneukum@suse.com>
>   * This device morphes spontaneously into another device if the access
>   * pattern of Windows isn't followed. Thus writable media would be dirty
> Index: usb-devel/include/linux/usb_usual.h
> ===================================================================
> --- usb-devel.orig/include/linux/usb_usual.h
> +++ usb-devel/include/linux/usb_usual.h
> @@ -86,6 +86,8 @@
>  		/* lies about caching, so always sync */	\
>  	US_FLAG(NO_SAME, 0x40000000)				\
>  		/* Cannot handle WRITE_SAME */			\
> +	US_FLAG(CHECK_AFTER_SYNC, 0x80000000)			\
> +		/* Check sense after SYNCHRONIZE_CACHE */	\
>  
>  #define US_FLAG(name, value)	US_FL_##name = value ,
>  enum { US_DO_ALL_FLAGS };
> _______________________________________________
> systemd-devel mailing list
> systemd-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/systemd-devel
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/031a20c5-27c3-cc13-6e0b-a308644abce4%40redhat.com.
