Return-Path: <usb-storage+bncBDIPVEX3QUMRBRW2UP4AKGQEZMKYW7I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BA121BFF4
	for <lists+usb-storage@lfdr.de>; Sat, 11 Jul 2020 00:35:51 +0200 (CEST)
Received: by mail-oi1-x248.google.com with SMTP id i139sf4740625oib.9
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jul 2020 15:35:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594420550; cv=pass;
        d=google.com; s=arc-20160816;
        b=b5AbuwbuEeh8PHaPacoRvRsuU9qyj9qTH9JXsdHNzJP47bkRx4+XUanhnmVO8XDBnz
         YRTZNaP6kfpAQkRg+3njcCrOnZc827LY6YAU8aZ/nJ0sm14bQHpXGu7knDwjmCNXo+/K
         5MklLvc0nPJVxjFF6TsfmOw9as7romYmpphANucFCs8ciaKtkX15Wq6Vho/2gqrd5rY6
         eun6mApXSBqQuOCJT5KDmVbSwXgqAhr4sLnXC+QiW5I9lLbSYYYOwfwCJhcFQsad1Wkf
         C4fI7ym0GQf9jxZP6o25xkCDO6WywODTUeMIqCTtrnikBbYsMnAYQ9nvrq28XbMaqy3l
         /j1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XST2wvc8GXJFIhrJFsziKjlHfhijif4ASAsd26ifmiY=;
        b=JPW8ZUSsem3TXjRsVGmlnp1agxGQ0ahBmuHFaogffp0DTc0jJDIenc6sH2s1K+cIhj
         cu5j17/ed5MKHTO64X7stdDaBJ/SHtvp0XKaD2nxIroSnMewdx1xwqGxI5HIaoRMiRA4
         7LhXFEmU36Af1G4DfNlXlasZILYHkMHWnXUFZJRca5v1zlQgWej9Sktq75epzjEy7Bq8
         HqF2jQVM2f/+jpB0g6FooMPGaenYBHmKRAGP7VzYJCK698IHSdreKAkSozeQ1Z85zVID
         TINehfuLGty9j/2tI45vESzTSazFVychFiS+eHukD9Z6v7fBCxGYVNZ0/cu6Bpv4T1x8
         hhgQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XST2wvc8GXJFIhrJFsziKjlHfhijif4ASAsd26ifmiY=;
        b=OPRIGfxMxS8B6p1w9a/i1HSrzs7OsT/0sJ5zKogjfI9H92lW7H/lLAT2iAcI7VMRWQ
         7iIhQZ2EgBN5PMI3zEbR9SPiTUo1c1RTfX0yrhb+mkK19FjdkbGOb69XDiO/9YIeGktR
         +j5hGvp7QuE9CEIJw/nuoHpxgIYWOTHPawZP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XST2wvc8GXJFIhrJFsziKjlHfhijif4ASAsd26ifmiY=;
        b=Z+PBTp9v/0QC97s/H+I5zfs2B7zGYV6u/kfwzq/BSc95i8efkECxEhHrsVIYAue1z/
         CTMjRV4gTA/2yFiNn06yJeVgKxVR2JVGjT95qLqLhuv0RMOVQipbnSHAUYIVF58pQtRS
         wLf9OcqqXqAL9aH2v2JpQoka7g5Id1qadK/FSfp4L1qnYUNwrNtyl3xLyd4B4D92J2m7
         nIzNJ9dUSN/9rZ3ikcTXYqh/SDcMHfqHtkdsyIVxLtJ5BDm66ExZroyxQzsq5tzzdc6H
         40jRJWjIwpqraBk38TzQ97bt+wuQmoO+PHIOGuSCM5Lfr7xWd91JKSC9voTg2omamzu0
         AOBg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530gL2l9s5qOWMtRIU0JqjQ1jLD99zQe7BGNzb7CjZky9fu6E1vE
	QEAFKBUiQubDTep38rWMIf5LFQ==
X-Google-Smtp-Source: ABdhPJy1VUEUbKFKEgFFcu30KfWvpYdEZhZF7LY0+ZigKnEGCKO31/HMYTJVHte50cLVpDA9g/3LEA==
X-Received: by 2002:a4a:9210:: with SMTP id f16mr61645474ooh.13.1594420550147;
        Fri, 10 Jul 2020 15:35:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:5016:: with SMTP id e22ls2242565oib.2.gmail; Fri, 10 Jul
 2020 15:35:49 -0700 (PDT)
X-Received: by 2002:aca:c492:: with SMTP id u140mr5638614oif.114.1594420549889;
        Fri, 10 Jul 2020 15:35:49 -0700 (PDT)
Received: by 2002:aca:dad4:0:b029:c1:acaf:8c17 with SMTP id r203-20020acadad40000b02900c1acaf8c17msoig;
        Fri, 10 Jul 2020 14:35:22 -0700 (PDT)
X-Received: by 2002:a62:5a45:: with SMTP id o66mr5026193pfb.43.1594416921848;
        Fri, 10 Jul 2020 14:35:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594416921; cv=none;
        d=google.com; s=arc-20160816;
        b=SF2T2cSgNCM89DhP4QYvP9oj0Wl12DLhHsDum3aUc2scPgemT4eH16R9I/0F6ADqTz
         qsQmC7WljcQun/bTdn43q/H/ZzgHdCqg919pktJVkWhAhC32Ol31YlM9ZhlV+/QCs2V3
         sjnbPB/j9bUwjM8+L4EUTpICCrGZ9PojPmW1ihPvafkZCld25s4BJgIoI/RDu7h8VLg0
         vpJJOKym1q7hR9tqrkb47OSbwlP2DmkJcWKR5tWQV2Z7nC5WjZ38EKLCsFgAn5LXkE05
         WBwgwsJgUe5JbkJIQkpjLEyacYF/UFZ3sz7pe2wkuvvaONRYTIEJIKZ09AMH5qT6mWyz
         9OFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=+ukpPY/I7NkUs8mHcg9yxS/pUOR3EgON8BG4FSFeSUw=;
        b=wbVjNh/kz3/L0cHQTy/RPTxEynlMagS2HJ/u8oY3CwEy8JQhUdk/arjQTHmAByb57n
         dmNEa+Ykg1Rp03pqb0hxqiDMPX1LfY2iHdzAJtMeVf6jqovEiAYkN7psoVWYkRq9PC3J
         FMsbB/VGdL5hquCjozQFOqIHee62XC6W1+XPXRlkTy3jomJBlEzBiUMGzwSnJQMWmKGa
         j+UzjFQ/5bSgS1KI/YTJGsju+E87VNhBls72oTAxBxid1edRM24113ujFaiDYJVScHpc
         F1fZgkuYP4KHgL3T216uRHJ3Xatf81IlmbBR+fUD8pYb8PjRZ+u/AjAbzK7Bsi6ti2LW
         XKKw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [2600:3c01:e000:3a1::42])
        by mx.google.com with ESMTPS id w15si4905102pfq.262.2020.07.10.14.35.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jul 2020 14:35:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) client-ip=2600:3c01:e000:3a1::42;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 980442D7;
	Fri, 10 Jul 2020 21:35:20 +0000 (UTC)
Date: Fri, 10 Jul 2020 15:35:19 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Stafford Horne <shorne@gmail.com>, Greg KH <gregkh@linuxfoundation.org>,
 stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org, David
 Miller <davem@davemloft.net>, Linus Torvalds
 <torvalds@linux-foundation.org>
Subject: [usb-storage] Re: [PATCH] Replace HTTP links with HTTPS ones: USB
 MASS STORAGE DRIVER
Message-ID: <20200710153519.421d2cf3@lwn.net>
In-Reply-To: <53342e1a-8430-2557-94c7-1da979a79e68@al2klimov.de>
References: <20200708095500.13694-1-grandmaster@al2klimov.de>
	<20200708103928.GC585606@kroah.com>
	<6b78a3fd-04b9-fc8e-b5c6-f03372a4cd31@al2klimov.de>
	<20200709061409.GA130260@kroah.com>
	<20200710103621.GA437393@lianli.shorne-pla.net>
	<53342e1a-8430-2557-94c7-1da979a79e68@al2klimov.de>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted
 sender) smtp.mailfrom=corbet@lwn.net
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On Fri, 10 Jul 2020 21:36:03 +0200
"Alexander A. Klimov" <grandmaster@al2klimov.de> wrote:

> 2) Apropos "series" and "as whole"... I stumbled over
>     `git log --oneline |grep -Fwe treewide`
>     and am wondering:
>     *Shouldn't all of these patches even begin with "treewide: "?*
>     E.g.: "treewide: Replace HTTP links with HTTPS ones: GCC PLUGINS"

No, this isn't something that needs to be done across the tree all at
once.  Keep going through the appropriate maintainers as you have, but do
please try to adjust your subject lines to match what they do.

jon

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200710153519.421d2cf3%40lwn.net.
