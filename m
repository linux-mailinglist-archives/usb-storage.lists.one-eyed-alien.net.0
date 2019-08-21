Return-Path: <usb-storage+bncBCUJ7YGL3QFBBZ4S6XVAKGQE62GSU4Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 0528A97B10
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 15:38:49 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id v134sf1601335pfc.18
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 06:38:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566394727; cv=pass;
        d=google.com; s=arc-20160816;
        b=ChfGdN/7PSn8i6aA4UThyu/UfnqanKo7rgFAqVHFyWzov2lzNy80ing0m5bsRUuTNI
         xY6NQuG4GZsShLk4sVvadLQSYugFPZx/7q9/N/LxowWms437jwzlhvsVItqS2ByN8Gm7
         huMd768lAcoCkO8k9KicDR7QWZCS5DpD2qVPxPP1ZymGjoSMbhFVRWXGP/Q9rt1s/B6R
         uMAGPs6mRy6xfUYqaFL3bfNJAnJD2Ob2sJ1Fq4GTRKYHRoG6wND3jqDrviwn13sbEBEk
         GGClFVkhNre7rNhtZHaIXYxA113TbLjmzz00bwE75rxb6Fy1ZZ9a5VOKrPWDzVTPYRgq
         63yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=G9mszoA6ySLwTHgpipRFJOJJJtds4UhYw6ZNwB8WzIw=;
        b=iY5kBrNOiY8FWmle8PpA7PsahfMwKqsq8ncF95rm9T+IMsLslJ0LUa0XwPZ1xwpBz9
         D98TKD1KX6+pJHCDHX1At+EDlIS44cwHZEg7oWzyS4WLU0UC7XGKVtNDA1yBc4u4PKpj
         R9733KuokBj4HZFRvjvnylqGzpCJoJuo8axkqTx33hmh4ueTxv2lSS0vC2TSQvkrqfqi
         EsKkYm5RTVWzfFKq2sNp/oTIuHAStkeJhAdgfwbVqJtZDGryH6D9d4gPAlwV1+uaMoTj
         WjtBZQMec6I8gWWj9k8yq9SDWAeVGQvJdujBaBOo4gQKWh0fxGfRXMVM3kYgEw9HCxCe
         UmfQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Wj/jQxTa";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G9mszoA6ySLwTHgpipRFJOJJJtds4UhYw6ZNwB8WzIw=;
        b=FLvr/pMgbnxun6+OwfAxj22AJEo1wxYzMzah/BoC773uwo8LL/QacfyOrQebWHh57r
         kaGG2HjqbmFUeNnqMLJ9pWdPhjaXt+eG2bwTBD8Z11c5s9F5KrR8Y3ouSd9KWkxbAG+p
         CmJ9tbvYO2Rsny0qgh0LGYbqN3og+TviGkcWs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=G9mszoA6ySLwTHgpipRFJOJJJtds4UhYw6ZNwB8WzIw=;
        b=JgVtMht5hlGVnEQWSHTQusjOjevVhfETc3Arael/0HDZJ7R4Qvk0Rd1MfVS7XDDw9f
         /iyQB22dpxo+xkAuJog5ZIM44MDyFryiiSQdHOnov/6Dl6GprQqV/YxJBaQZrSLYdfKd
         WCQR+rvbF1MLZpUrSp0jfBwikF67VM/DKiSogKxRRnvpfXDPJdWnrPyJSfPfzFRr+eks
         aTjgyCcFykJ5YhhC3PZ+EcWhGuizvAIM5GG6Bnm1KZPhxo6VhGsvRUyZu8ZEk3X16YZ2
         ILe0lHbEQt8fA9dBhoRTmIhQ0DWkXqqf0kZoMdTqF9MgdpXLaFLEuGcPsww7b0eEn1uW
         +q2w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWvSb9/b2YUAIk5wA0wc5BgfqDym38UlxQ4darhJay7/GZb+5W5
	nQSwALS6y1PVjiNX/VIqe/GPZw==
X-Google-Smtp-Source: APXvYqx9+vu9735PBAAYT750J01kzdkO1khmPOTVdkXBBrtHqyOKIKRIl1ZPqlXv6iQNuc9BaoYj4Q==
X-Received: by 2002:aa7:8c03:: with SMTP id c3mr35270874pfd.139.1566394727690;
        Wed, 21 Aug 2019 06:38:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:6203:: with SMTP id d3ls522985pgv.16.gmail; Wed, 21 Aug
 2019 06:38:47 -0700 (PDT)
X-Received: by 2002:a62:53c3:: with SMTP id h186mr13262434pfb.178.1566394727396;
        Wed, 21 Aug 2019 06:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566394727; cv=none;
        d=google.com; s=arc-20160816;
        b=lwpSwsqhy+sX9UgavKRIN61hO1iTzuWJsXWzo3q87Uc/milgFqGTshvcjCTVc8v2Du
         8jQmd5+KaByBdfNaPnHD7206zTihzDSKhkHxexCJbXEORmeiF2/7aBZZ/hh0x9QMd5TJ
         ft6oJWZnQlXHtcgYa80jVP/XVPkv06mY3UX28i/b4kDM4g2rF/N6WuSurL3x5/sgUHMd
         +MdVH+6VhXiGKKWBqiA/Z1Ob3Q0K+S2KHeEES6mYSuBIX1FzNiaoN2yNe6upj7yARS7U
         vXBy9AXuknRBgxURlKkifyRHaza0wCCKYb7dc6EG5N8o5PBaj+7aI4L3HTEq4lIGGAbv
         3jGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DxTWr7J8jjZaRbBt+ElgZULn+WrXLgKKazBaXSaXwgQ=;
        b=zYfEgVtRYqroFbLmiaGD/ET55MCdvQQsjSp3VDpWXcA+4fYXQdMH6B6uiioPY4q8en
         FSpXhOTtdPtsSgNJFFIXPNHFMYJGcsOfa+hX83r71Pc2y5eRKFtHwR9He3v+DkYsrfOj
         COBcosCaCaHL/EoaY92NPkXBZRes0KAr7jaNKn0ZfScijnT4m4e8jNjYasDIkaqoua5q
         kGglat5qC49uG5B8rSuhQ2xReDRBXgpSEpgRTFvsRIPuQoiSAlB74v73+AM8USDyHdPj
         TXDxOIMBQb5q/5FAaTRHCxZNBmwV2qgbXOEGN5C2+P4qEcbq8jp1nf0NAmKeiRDLOpKM
         zaLg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Wj/jQxTa";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id j5si21048pjn.27.2019.08.21.06.38.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 06:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [12.166.174.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D601C22DD3;
	Wed, 21 Aug 2019 13:38:46 +0000 (UTC)
Date: Wed, 21 Aug 2019 06:38:46 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Matthias Maennich <maennich@google.com>, linux-kernel@vger.kernel.org,
	kernel-team@android.com, arnd@arndb.de, geert@linux-m68k.org,
	hpa@zytor.com, jeyu@kernel.org, joel@joelfernandes.org,
	kstewart@linuxfoundation.org, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
	linux-modules@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, lucas.de.marchi@gmail.com,
	maco@android.com, maco@google.com, michal.lkml@markovi.net,
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com,
	sam@ravnborg.org, sspatil@google.com, stern@rowland.harvard.edu,
	tglx@linutronix.de, usb-storage@lists.one-eyed-alien.net,
	x86@kernel.org, yamada.masahiro@socionext.com,
	Adrian Reber <adrian@lisas.de>,
	Alexey Gladkov <gladkov.alexey@gmail.com>,
	Andrew Jeffery <andrew@aj.id.au>,
	Andrew Morton <akpm@linux-foundation.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	bcm-kernel-feedback-list@broadcom.com,
	Benjamin Fair <benjaminfair@google.com>, cocci@systeme.lip6.fr,
	Dan Williams <dan.j.williams@intel.com>,
	David Howells <dhowells@redhat.com>,
	"David S. Miller" <davem@davemloft.net>,
	Fabio Estevam <festevam@gmail.com>,
	Gleb Fotengauer-Malinovskiy <glebfm@altlinux.org>,
	Ingo Molnar <mingo@kernel.org>, Jani Nikula <jani.nikula@intel.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	Julia Lawall <julia.lawall@lip6.fr>,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org, linux-hwmon@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org, linux-rtc@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org, linux-watchdog@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nancy Yuen <yuenn@google.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Nicolas Pitre <nico@fluxnic.net>,
	NXP Linux Team <linux-imx@nxp.com>, openbmc@lists.ozlabs.org,
	patches@opensource.cirrus.com,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Patrick Venture <venture@google.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Richard Guy Briggs <rgb@redhat.com>, Tejun Heo <tj@kernel.org>,
	Toru Komatsu <k0ma@utam0k.jp>, Will Deacon <will@kernel.org>
Subject: [usb-storage] Re: [PATCH v3 00/11] Symbol Namespaces
Message-ID: <20190821133846.GC4890@kroah.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821131140.GC2349@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190821131140.GC2349@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Wj/jQxTa";       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Wed, Aug 21, 2019 at 03:11:40PM +0200, Peter Zijlstra wrote:
> On Wed, Aug 21, 2019 at 12:49:15PM +0100, Matthias Maennich wrote:
> > As of Linux 5.3-rc5, there are 31205 [1] exported symbols in the kernel.
> > That is a growth of roughly 1000 symbols since 4.17 (30206 [2]).  There
> > seems to be some consensus amongst kernel devs that the export surface
> > is too large, and hard to reason about.
> > 
> > Generally, these symbols fall in one of these categories:
> > 1) Symbols actually meant for drivers
> > 2) Symbols that are only exported because functionality is split over
> >    multiple modules, yet they really shouldn't be used by modules outside
> >    of their own subsystem
> > 3) Symbols really only meant for in-tree use
> > 
> > When module developers try to upstream their code, it regularly turns
> > out that they are using exported symbols that they really shouldn't be
> > using. This problem is even bigger for drivers that are currently
> > out-of-tree, which may be using many symbols that they shouldn't be
> > using, and that break when those symbols are removed or modified.
> > 
> > This patch allows subsystem maintainers to partition their exported
> > symbols into separate namespaces, and module authors to import such
> > namespaces only when needed.
> > 
> > This allows subsystem maintainers to more easily limit availability of
> > these namespaced symbols to other parts of the kernel. It can also be
> > used to partition the set of exported symbols for documentation
> > purposes; for example, a set of symbols that is really only used for
> > debugging could be in a "SUBSYSTEM_DEBUG" namespace.
> 
> I'm missing how one can prohibit these random out of tree modules from
> doing MODULE_IMPORT_NS().

Nothing, but then they are explicitly being "bad" :)

> That is; suppose I stick all the preempt_notifier symbols in a KVM
> namespace, how do I enforce no out-of-tree modules ever do
> MODULE_IMPORT_NS(KVM) and gain access?
> 
> (the above would basically break virtualbox, which I knows uses preempt
> notifiers too, but I don't give a rats arse about that)

It's a huge red flag for anyone reviewing the code that this module is
doing something it probably really should not be doing at all.  It will
make reviewing code easier, this isn't there to try to "prevent bad
actors" at all, sorry.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821133846.GC4890%40kroah.com.
