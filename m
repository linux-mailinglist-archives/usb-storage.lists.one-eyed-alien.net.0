Return-Path: <usb-storage+bncBD6LRVPZ6YGRBD6V76UQMGQEIL2N33I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A847DBF2D
	for <lists+usb-storage@lfdr.de>; Mon, 30 Oct 2023 18:40:33 +0100 (CET)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-1e9e17b3269sf6249150fac.3
        for <lists+usb-storage@lfdr.de>; Mon, 30 Oct 2023 10:40:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698687632; cv=pass;
        d=google.com; s=arc-20160816;
        b=E61Gewy9vKYHq5D5a0RYrneUQiuuiYiayJPxal6eex5SJQshxBQzs+JiEfGTUNjy51
         N3c4/txkzMmJyIstUDPdzxy678njNfA4k6eCu9Ldgk4j5zYvPFqzoTGbApZYrBVxZNsu
         Z/CEYK+xFffuwXSWpZ0t/wAh18rT3qybs2lyZtHSv58tU3YxZusWeMYu4sgkBGi7YU6i
         lwL8lfvwGbWiX6JMFQIpgYc/RQUV5Qx2woa+Tee/40eYvIjYZtprLfKB6PTD3+3kAr7c
         gvfvSuftvAnmRXXNpvGD7Lw1hSI+lTtEU6gPZ4G+H80zI2RY7ZMfnVXWLSpV6C3AygSt
         XaaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RaaohYJ3kppqSYKeXUiARqwhOpkOCqsSkhJe1TdaVKc=;
        fh=ldCGyavYp779X2ViOANHPzjiMm1aqt/1VlioTkK72aI=;
        b=TV5BUoBRhQ/gUuWVQ5jkjWwoCbYf40zngS5r56Q23aHeu20jxr1Y7feLCzoYS1l59L
         wfMP0T9B35ES80koAUdut+rPoqGTn1T0gBy+qx48NpcZdwJgoEnK/BKnFAP6mqOaxLf6
         4kb91i7LK1+8JsEgZRpKc90boMaUfkc0tMTpBQNtzEzd1lNML5rtDz5E7icgZFQ/Int6
         5uY1DvL3LWf4yfiYvUyETrlLTdc1Fy1u9YgvLjc4HrItnLAGh3OoQ32qyGOUaEWH8Q6r
         z1nAYdkUE5YC56f6mJHr7BmXERjxjsqSZ7F0ydJFtiN9i82Yl+FZsnm2P/YnY1eUUvRI
         2OWw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698687632; x=1699292432; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RaaohYJ3kppqSYKeXUiARqwhOpkOCqsSkhJe1TdaVKc=;
        b=Q4M/bp8BboI3M1QfHSfnNYXVfYVz4HnD+v9iNzfAF6iJdMz1WP0tnUaL1IK5UnzILt
         5T9NqcuLnXte3eFA1n8Wh7RRJhIVmORutIoPY0LlN3MKaLml/A7sWhyt7GKF0roUXe3M
         0T/Cxuzlkz4gdQLp/Q/SJoxMUg6dSjwRJH9CI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698687632; x=1699292432;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RaaohYJ3kppqSYKeXUiARqwhOpkOCqsSkhJe1TdaVKc=;
        b=D8Pf4dsnNquo90fxMvMHY8xCLP9TGVTSYC48jLw0HNAoRoef2EGmL4HqAIICqxp2D5
         BriCvbCwAqlFMQ+Z1nXr350kr0ylTvHW2bJQyqZGkkASXWxzqt+6BDuw2bljybJMvJKa
         fHLAYO+Po6NaK9nOnADTIFdSKVo/kJlAdv3UC0jKBrZw/PO/0VX9RGwGzHvyAYEx3kNA
         +oWBNT2lUFaQRSDN8JEbW2FRpAzv82X4t1vfMzUHcLtS1ejpynEPXnMelwwLMwh54q/A
         /aay3Rm9oJ1+8bFFJqvHB+gGAsz+6XWr7IaYvYjxZmppIA7V1Iqou5uHzQJUUumMuM+T
         p46g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyS7xAOaC5J6H+6yoIsMZUBTYdb7gV2eCYXRHJXNdNdKMJVXZEM
	GIDHHCQjyzyZM49BQchEU+Nn8Q==
X-Google-Smtp-Source: AGHT+IGOelsKFMtgbHyGi2kRBzWHcvHrteK8jGxfvzhMLei88Pn1mHmnLa1cyjRX2IjU/ReZiHyfYg==
X-Received: by 2002:a05:6870:d88b:b0:1d5:a85a:13b6 with SMTP id oe11-20020a056870d88b00b001d5a85a13b6mr11988845oac.45.1698687631771;
        Mon, 30 Oct 2023 10:40:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:5a5:b0:1e9:d67e:3eae with SMTP id
 m37-20020a05687005a500b001e9d67e3eaels2844455oap.0.-pod-prod-08-us; Mon, 30
 Oct 2023 10:40:31 -0700 (PDT)
X-Received: by 2002:a05:6808:a84:b0:3b2:f431:e02d with SMTP id q4-20020a0568080a8400b003b2f431e02dmr10376383oij.26.1698687630704;
        Mon, 30 Oct 2023 10:40:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698687630; cv=none;
        d=google.com; s=arc-20160816;
        b=hBD+nN/oFHzNsrIQ6eQhscO0UHRvNXGw4MPZyFohic3BkSgz6ze8Ag6uEM1fCcjWZH
         lyKf+j19nIDREd+gN/IJEXvkTTxyH+yJXREv5NbmgQEwZ4jwW2XRFkrMfF+lj6j0oqy4
         O8mjo5iGyEFiynAl9U8c2uQpklYGYz+RdE0IgCFxEYSTIBcVUC0E3FqLNJam/o+fUXUA
         JPPLGzaAFVkX4CrIwaz7IlG6utXE8qRU8OdqxdHqYnRW1avkt5laHNCctEtUd152DXnV
         P2DYHYuzr6VilOTiRzc11dtppjc9jtk456+BT1kFpoGg0Mm6L5EhKUk367kgUA49ZUM9
         GdqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=IIFsuzXvKAFKORl6q6vHDHhREw8aV+xNO1hvE4DPqEo=;
        fh=ldCGyavYp779X2ViOANHPzjiMm1aqt/1VlioTkK72aI=;
        b=QOVt5xTWzgFG5/X6kzD7a6EosPSY2tS5L83WPx4lAX4aUIHiY+vQ+mK7J2gvD3pUdI
         eHFelQXs6lcU/q37yofgYsiv1ib2TiqvFoCWiu6XRsEEBhDdO0LT+qIO4JBbCb8JWpqb
         uvf5CA6qKeKTxqRhK8GUs/+VUyPt24OLJSUJ+L48Vzh5U7jTMwrsxRAPdet41m7RF0LH
         eneZ2WQqpZOPpwMkjy4Z61iYmprytmxus4n6L1HGf9MEhYUgg3aFezDjyT/D3I1zVFnE
         P0y0R4AjJx8MZ5f5uXy8ZnKUwuoMFVf2kPJyYz9h3xLCYDPOUgmwdKD8yjdoelJhKqmO
         E0FA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id i1-20020a37c201000000b007725a68ea34si5691951qkm.89.2023.10.30.10.40.30
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 30 Oct 2023 10:40:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 681113 invoked by uid 1000); 30 Oct 2023 13:40:29 -0400
Date: Mon, 30 Oct 2023 13:40:29 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, gregkh@linuxfoundation.org, oneukum@suse.com
Subject: [usb-storage] Re: [PATCH v4] usb-storage,uas: use host helper to
 generate driver info
Message-ID: <f6b275d9-eeeb-47ee-bc0e-3fd491e62791@rowland.harvard.edu>
References: <20231026101615.395113-1-gmazyland@gmail.com>
 <20231028174145.691523-1-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231028174145.691523-1-gmazyland@gmail.com>
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

On Sat, Oct 28, 2023 at 07:41:45PM +0200, Milan Broz wrote:
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

> diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
> index 46635fa4a340..b8c5daeb8ff3 100644
> --- a/drivers/usb/storage/Makefile
> +++ b/drivers/usb/storage/Makefile
> @@ -45,3 +45,34 @@ ums-realtek-y		:= realtek_cr.o
>  ums-sddr09-y		:= sddr09.o
>  ums-sddr55-y		:= sddr55.o
>  ums-usbat-y		:= shuttle_usbat.o
> +
> +# The mkflags host-compiled generator produces usb-ids.c (usb-storage)
> +# and usb-ids-uas.c (uas) with USB device tables.
> +# These tables include pre-computed 32-bit values, as USB driver_info
> +# (where the value is stored) can be only 32-bit.
> +# The most significant bit means it is index to 64-bit pre-computed table
> +# generated by mkflags host-compiled program.
> +# Currently used only by mass-storage and uas driver.
> +
> +$(obj)/usual-tables.o:	$(obj)/usb-ids.c
> +$(obj)/uas.o:		$(obj)/usb-ids-uas.c

Quick test: After those two lines were commented out from the Makefile, 
the compiler still knew to rebuild unusual-tables.o and uas.o when 
usb-ids.c and usb-ids-uas.c were changed.  So these lines aren't needed.

Apart from this, I tried running the patch through checkpatch.pl, and it 
flagged a bunch of issues.  Some of them were false positives, but 
others really should be changed to match the kernel's style:

	The SPDX license line in .c files is supposed to be a
	C++-style comment, i.e., use // instead of /* ... */.

	We aren't supposed to add new typedefs.  Instead of writing:

		typedef enum {...} dev_type;

	write:

		enum dev_type {...};

	and the same for dev_flags_set.

	checkpatch would like the FLAGS_END macro value to be enclosed
	in parentheses, since it's a complex expression.  Same for the 
	HI32 macro.  These don't really matter, but you may as well do
	it just to get rid of the warnings.

	Quoted strings (line 117 in mkflags.c) aren't supposed to be
	broken across lines.  It should just be one very long line.

	Contrariwise, some other lines are longer than checkpatch likes 
	to see (its maximum is 100 columns).  They should be wrapped.

These issues ought to be fixed.  But it's all stylistic stuff; I don't 
see any actual errors or things to improve in the patch.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f6b275d9-eeeb-47ee-bc0e-3fd491e62791%40rowland.harvard.edu.
