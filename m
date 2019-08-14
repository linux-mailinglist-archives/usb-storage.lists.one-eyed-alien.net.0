Return-Path: <usb-storage+bncBDMYPB44VAFRBGHZZ7VAKGQEZKZ7M4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 7129E8D2E7
	for <lists+usb-storage@lfdr.de>; Wed, 14 Aug 2019 14:20:41 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id j10sf10398503wrb.16
        for <lists+usb-storage@lfdr.de>; Wed, 14 Aug 2019 05:20:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565785241; cv=pass;
        d=google.com; s=arc-20160816;
        b=OCnyyXtdDytA4eWQfMvkYEjGwyu2t+IcqpRi/UggsbPh3SaAr9GaQi144rsdQ4K5XI
         HMZMsZiMRbBOcTNNv7IiTlGteqyz/QhGTIJwtKIUYYaj9K9O5jGDrFfWsV4sZMV7P73d
         1BoAgzlZjGx52OKxt77rYTDL+iIOiG1h3pZ3kaNrbvlmUm7VlGtuUoTEoQqy8uq+Lvlz
         HZ+s+7tF+oRSVcrOHbJWhYLc/s7Hy+TV62RzpPoZKsur/IWXckGL+wAlaD7PfFPj+MBv
         StHM7BGMc6j0hj+Kr4b70/wv/d+RgPVmCf8+SqbBYd6xOm8hg2cnPmyv5rlrcB81E0W/
         JqQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=TDOuxVtljVEfckkVk7x8ATxW+jW3fl7yoOnHQpJ1nHg=;
        b=ala7WMX7cN5WK/aPucqIUcrtCPmYkxAN3+5BF1/MUwZDzXRde6F3OnLvzARoEAGBug
         iqBx6uprBRbwqNJOhc1huos7gel3jEHOPhEgN6iJpr5QnIEnQOGxy2otMzxDda/DbOxw
         VH4Ij5Wn4+PtVCc3HvJnyxfWf6NFZ7feUBs9k8ZOj8rX/okjO0yr4WLyihEd9kBoFJyH
         8cTZ/HciZjHRfoPj659ZVdFQCxB+2S7TGtJbjF9DhQAnDl9vMJL8tQTdG7h+dYIbbrWN
         cc6HndPCdFbaVKjphtkGr1LssYa1LcJ+Rsywuc80UZuvEmuf23z/c3OsHDqlPc2v7p/m
         r+kQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q37Ffb3Q;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=TDOuxVtljVEfckkVk7x8ATxW+jW3fl7yoOnHQpJ1nHg=;
        b=iYINRpIXz83AXv8hVSwEEMTDG5BMCVEzQ2B0axtcZS5dS9jDEoGOOIZUrwQl/RChPS
         N80DR8HatUh+xUylqN1tW0Rwxphu3O5wHuUfmbMwYx2rsYuXaogbygvZUx8xml7t11w0
         ErdpMuFmr9ydnsItpNjs6BUNa9rj9oKXWThaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TDOuxVtljVEfckkVk7x8ATxW+jW3fl7yoOnHQpJ1nHg=;
        b=uZSSnx57FQUQp4U7C5i3bRCdl8pl+psgRp70khsBcsrlOM/wFDzcmUKODpX+m3wiI5
         /ho+cSz7CBHj2zIS00+i4Kyn/Lmm6MtcfTY3y21IKgjzFCm//6VfgLxIi5qranMk1R2o
         DHGiZoS0di2MZg2UnPvwGGcuItCNOd8VCcfq3Rp0KI2pVmcMu+aF70ZI78/SE3SIBe4d
         6NvOVMcR0eN3WhybUvy2YB030fZbbjoOoBLnkeZiHgeCev/VBc1NDRIjWWqP29RJUHiI
         7mQ1P0LrMtdK6+PY4DQ14FNiaa7SInAOCkeRGghREeS7sRNPk5Pa5hRyxciJknNuxrD9
         pElQ==
X-Gm-Message-State: APjAAAUV+oMZxj5MpGH+yVJn9skwv6y45HbIUHkuHh2d9qt4L9R1wexs
	enWqBuwtWTUWCUR+s3MWGm8V0g==
X-Google-Smtp-Source: APXvYqyCP64jbCptMd0t9cXLcZf1tFHZe1RKmyXRdzIXn7M7d5DBrDix9LLAoKvrPFBYusGG6gnf+Q==
X-Received: by 2002:a5d:46d1:: with SMTP id g17mr40308950wrs.131.1565785241136;
        Wed, 14 Aug 2019 05:20:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:3b05:: with SMTP id i5ls733201wma.2.gmail; Wed, 14 Aug
 2019 05:20:40 -0700 (PDT)
X-Received: by 2002:a7b:c753:: with SMTP id w19mr1940464wmk.91.1565785240409;
        Wed, 14 Aug 2019 05:20:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565785240; cv=none;
        d=google.com; s=arc-20160816;
        b=H9KOA2WUOfcOzLUA0XxFo56z1Iwf/2gguvdMyvrx1mIAIcZ9S5WvKabU16KvkGRwkR
         JAsP0VAMzOscyYbJ9YYheNx33LjGRBvdsCqXsAytIHbrZ4YxxIhAtpxr8wlv6mf89FHX
         1uifXhCStE+oLo14LrYaef72HgWOhQ2yM6uLSvZR4eI5n/23FaSUUtB2uVFnWlsFgf3T
         znoVxGtxXlUCKn8/3vLLF28Q4AZbmoH3t1pMwDmIAiew1XrImo8EElBhEqlEoXRqO1Wx
         /VlPZqSalH67fnfVPbeelozd6uaOpPlW+T46CogODmSNWdf2dsthfRNAC0sA4L9gkFHA
         2wvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=z7PDsmqgxBW6PvZLG8xYLdy1sfA/Oa3ZAdP99NTWenE=;
        b=fxatRZgdFuuI1ZKIob2UdQ3b1KiLKD3FP534b/w3IyNUAyIuD63QhubAlmZ7q8b/KV
         jFytZFZAlepL5/0oowUlp1nRhz51gd+pKP2UORErIk2VrCz9rnQ4HIrzDE/0bSypTtrg
         MtZ/JyliVSEYlkAYf99DXo+6fK57vHuOw/DMEVp6crQLuuWVDKgFuBrkSNPmpudUysoq
         UPR/2vUO0jrafr8XVkwBicQBz8F9iKfelTZT+6bUfvGV9CCA8I8OLtfpOY2qCDLbBUPy
         LuB8AES5KEbRNyF9yBn0BWJgcSbYqy3a1GW3JQoKtzUWomq9pAdfAGW6SnxhSZuy0rj0
         awbg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q37Ffb3Q;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z22sor2745693wmk.9.2019.08.14.05.20.40
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 14 Aug 2019 05:20:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a1c:9a46:: with SMTP id c67mr8294185wme.152.1565785239762;
        Wed, 14 Aug 2019 05:20:39 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id r123sm3340862wme.7.2019.08.14.05.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 05:20:39 -0700 (PDT)
Date: Wed, 14 Aug 2019 13:20:34 +0100
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Markus Elfring <Markus.Elfring@web.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Julia Lawall <Julia.Lawall@lip6.fr>,
	Martijn Coenen <maco@android.com>,
	Himanshu Jha <himanshujha199640@gmail.com>, cocci@systeme.lip6.fr,
	kernel-janitors@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org;, linux-m68k@lists.linux-m68k.org,
	linux-modules@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, kernel-team@android.com,
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
	Alan Stern <stern@rowland.harvard.edu>,
	Arnd Bergmann <arnd@arndb.de>,
	"David S. Miller" <davem@davemloft.net>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Gilles Muller <Gilles.Muller@lip6.fr>,
	"H. Peter Anvin" <hpa@zytor.com>, Ingo Molnar <mingo@redhat.com>,
	Jessica Yu <jeyu@kernel.org>,
	Joel Fernandes <joel@joelfernandes.org>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Kate Stewart <kstewart@linuxfoundation.org>,
	Lucas De Marchi <lucas.de.marchi@gmail.com>,
	Martijn Coenen <maco@google.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Nicolas Palix <nicolas.palix@imag.fr>,
	Oliver Neukum <oneukum@suse.com>,
	Philippe Ombredanne <pombredanne@nexb.com>,
	Sam Ravnborg <sam@ravnborg.org>, Sandeep Patil <sspatil@google.com>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [usb-storage] Re: [v2 08/10] scripts: Coccinelle script for namespace dependencies
Message-ID: <20190814122034.GA117054@google.com>
References: <20190813121733.52480-9-maennich@google.com>
 <d3c852b2-0e41-1a7e-2f98-d8fd23cb8c1a@web.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <d3c852b2-0e41-1a7e-2f98-d8fd23cb8c1a@web.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=q37Ffb3Q;       spf=pass
 (google.com: domain of maennich@google.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=maennich@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

On Wed, Aug 14, 2019 at 02:00:23PM +0200, Markus Elfring wrote:
>+# This script requires at least spatch
>+# version 1.0.4.
>
>How do you think about to avoid the duplicate specification of this identification?
>

That is a good idea. I will reduce the patch to

+# This script requires a minimum spatch version.
+SPATCH_REQ_VERSION="1.0.4"

and use $SPATCH_REQ_VERSION when diagnosing this issue further down.

Cheers,
Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190814122034.GA117054%40google.com.
