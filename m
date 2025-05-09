Return-Path: <usb-storage+bncBCUJ7YGL3QFBBJ5K7DAAMGQE333TCGQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id C7034AB17A3
	for <lists+usb-storage@lfdr.de>; Fri,  9 May 2025 16:46:01 +0200 (CEST)
Received: by mail-il1-x148.google.com with SMTP id e9e14a558f8ab-3d90a7e86f7sf42266035ab.2
        for <lists+usb-storage@lfdr.de>; Fri, 09 May 2025 07:46:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746801960; cv=pass;
        d=google.com; s=arc-20240605;
        b=AlDIAAUQDoSrysGSxyrLvM45vp8e5ckoR/JXtgUYWpOeqeQM3IYG5S5wr5ScC4dy3U
         Gqckpk4ERwK+Xk8/3xGcsS1sTv8+S/0BP9Hk6nfvW00oAM9UtyVZLRVZ7abDxciU07ZM
         zwhrUi5GvJUZ/CIEKQ66HX0Non1+/UuiojzdnlbpfH3VaOeOvi8PxirthyQeBQ6s9IIy
         P0O6bdVUU4HKQa4EeS7pfvv36uCf779eKfE6jVhBEPHPWlSBw0XIiXvkW6bhDe2ayiSv
         mkt0SYu4oWvOsApTnskvH/m5Sw83JBqhhqDikXXXTFyu42bUQptPA2BnJ+ad7y8MsFov
         vCsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Sip9mXP1Do82CKIuwdReJPjoQn1+iB9v2VERDS4ssko=;
        fh=SYNOKMrGqMu2Eyi1KMBIczq3JSfdciad8GQqX+sArGM=;
        b=IsI1kGj1I3WvMDV4yd2SVbvmOp6rvQGVx+BYQXpmDFYqR0NQo8JKCrCXkC62pcg8Zh
         5iKVqyYdm52CBZmxtYOSch0FCMR43v89Uo/wM/OUMHH0gOJdIwDbuhaS06qCZLtbaum8
         WXh72EiMkpcYyEM7j8VZ+sM7qScZGNVt0n4Hoqc7PvsP6LDHnUaVvR41EaC46i5cEMYg
         v7Tl+PJZTCT2AiwBdLzNL3Dk5vaNj8URdI9jC2a+3PU0Qg4AEW7zyp8XFhIQl8C3A4UY
         +2QDXuaxO83i6r3NoM96wl0uoco4vtlXy7t4EEGdElhGUXv+MMEYSPbWpy/y7RfW6TOb
         JX8w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=G3JLyls1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746801960; x=1747406760; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sip9mXP1Do82CKIuwdReJPjoQn1+iB9v2VERDS4ssko=;
        b=E7M2scmKfvKZMvJjkbY4u1/nc/zoiOQMgYiZTiBAZCHF7/jXIZoVo30TXKYJKeBCm9
         WAUD9ly/BBQqrfsbNtL1X28zzl79Mkwj5PLjsv2yNZ9GAdils/VQayaJN45h3o+SWf09
         sT44QuxHTG6vwV/8u3q5oiZofLE9n7PpJjgUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746801960; x=1747406760;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sip9mXP1Do82CKIuwdReJPjoQn1+iB9v2VERDS4ssko=;
        b=bvw3Nrs+W4Jg13eMsbaiL9vjwUFRGOu7Lq55OS2cmq7ePwrtE0wJk4qzDF5kXVY3ct
         Umgmwcr5jkmrfjBmNymvVJvsIuzftqo/MEsxiR9Gpf/aOJxDESp7iYgu+up9DMxomSg6
         yhZdk1XY3s76X3vpXF/PiMc9YIpubNAuvwN1GYg2WySMt2pAnftAKDvrgIDyE2rUG1zQ
         G1Vl4zLgmxAgQr0vW7aACfZ6ZjoJhyG7PjlT8OilVDJ9GKY5QuC08g3NAe9McdDNbt90
         XvoWa39VpuVtVKFU1ybLRQsyevz1TigjER0ClI8LLnQj+43z+K5QbH7J6zwrcPlKjPT8
         /XsQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUzHQtQPfJm8v43vzdX9eOz48qHTZcQBJgPDtGhkyNLakBso1Qq+9etKyYBahQmWvea0PsCAA==@lfdr.de
X-Gm-Message-State: AOJu0YytWUEfvvPCoHKc4QPV/3p7dvd1jtWKruTmabKu4HydRM+7yYKq
	EUkf+jkyENC5qmj5+84SLi1ZUZ/pROg/SEes9fQ+/8nPH/++6Q6NGksYXAFJz8Q=
X-Google-Smtp-Source: AGHT+IGers+m/p3cfi5uHIDpx7tRvq4DpbBMbeF/brW91PCTDdWDkBb8cqTTxza9bdlaP+SxPpHQqw==
X-Received: by 2002:a05:6e02:1d8d:b0:3d8:1bd0:9a79 with SMTP id e9e14a558f8ab-3da7e20dd82mr54034335ab.21.1746801959891;
        Fri, 09 May 2025 07:45:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBFHLBoD8Mx5ezJU7E0JLva5YVT1kU2BcOdP0BAi64Qmvw==
Received: by 2002:a92:3210:0:b0:3d9:67d6:a482 with SMTP id e9e14a558f8ab-3da7855532cls17134585ab.2.-pod-prod-08-us;
 Fri, 09 May 2025 07:45:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX67+v3Ieq4AIZ9wWUU5rOnmrvqpkTWygllQwz2Bk+HDGYaZsEMmZ/IdkMqq/zVZev+qzxH1Zwc++FenQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:214b:b0:3d3:f7ed:c903 with SMTP id e9e14a558f8ab-3da7e15ebd7mr45381665ab.0.1746801958960;
        Fri, 09 May 2025 07:45:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746801958; cv=none;
        d=google.com; s=arc-20240605;
        b=UVjqqSjxDc+lxk4yhTflhFBv3FSPr+eFoeN0zzJ19hL6N7MBHdAicuaaN3XLnwjCbK
         CpXhYdm+aH/DfVBBQ0JaXeX0vFSIeQg/X5WviKjlCO8WNrHJQZ1wkHPFmB0SPB8Pgnm6
         tmyeqYBnPKKy8OmG7Z7r+B8grnnzCJubVxrpzgPtJcS4Zhtl2wKlSoRBn4lRb8kSMyG/
         ods8GYcyn/2KUOlAqTdYOpV2o4+HSz92UhhWxYPt7neJrcaCTSs9HEchy5Xf2Bhbv/Vo
         s1azPeYPgkwRcUpP4rq+EiiWkyIJA+ac9FQDo9qDKd7fJbv5xp4MvBS6n0BUJ1zl0PrY
         JmVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bNdA1rpdHFyMQ79LC2T5hIe0CEAj+T/NA/Ck+u8AdN4=;
        fh=MQv2Gz5VINtOOlUv6OhAaSqpppn74dVHXR/TVS6QFDg=;
        b=dGt2plSLvgdROB4KmUYhyYLSYLD1Tqwk8YUB83H/ACJhCZVYMGwKMU5ZyyalpYreqa
         +6zOPZvcJiZ9C1kksFzGdCOUz5cNckGf5oYgCoaIRAGZy05S/InVjzd1cCL2WRGNFUYh
         fIxxzaQab79ZhD2uYMlUuu9qrnjhiMPLx1t3lCLvbLrWVgct2oO1/X+7LmC+M6ZFefbh
         hXneGz0J/A/j17k0Cg5kzW+PL259sfSuyWZrUkPYmXdPu/GSlFRQK0q2muIlnOCyT2WQ
         LLDQSYgyGOym04MdoYBcqNC+EiciXEsDSAVUl5092ItbpJsynUShci1p0MD/ziF24Y24
         StOg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=G3JLyls1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [172.105.4.254])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4fa221c1dc1si2359695173.4.2025.05.09.07.45.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 07:45:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) client-ip=172.105.4.254;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D90726111F;
	Fri,  9 May 2025 14:45:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3322AC4CEE4;
	Fri,  9 May 2025 14:45:57 +0000 (UTC)
Date: Fri, 9 May 2025 16:44:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jake Rice <jake@jakerice.dev>
Cc: linux-usb@vger.kernel.org, stern@rowland.harvard.edu,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [RFC PATCH] usb: storage: Add blockbuffer ptr to
 info struct of sddr09 driver
Message-ID: <2025050927-bring-gusty-e850@gregkh>
References: <20250506191531.3326-1-jake@jakerice.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250506191531.3326-1-jake@jakerice.dev>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=G3JLyls1;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, May 06, 2025 at 03:15:31PM -0400, Jake Rice wrote:
> Hi all,
> 
> This patch updates the sddr09 driver to allocate a reusable block
> buffer. Unfortunately, I don't have access to the SDDR-00 hardware
> (which I know is pretty ancient), so I'm requesting testing from anyone who does. 
> Please let me now if the patch causes any issues or improves performance.
> 
> Best,
> Jake
> 
> ---
> Currently, upon every write the block buffer is allocated and freed which is
> computationally expensive. With this implementation, a buffer pointer
> is added as a member to the info struct and allocated when the card
> information is read. The buffer is freed during desconstruction if
> necessary.

As Alan said, this is really slow hardware so I doubt allocating/free
the buffer will even be noticeable.  Why make this change at all if you
don't have access to the hardware to test it?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025050927-bring-gusty-e850%40gregkh.
