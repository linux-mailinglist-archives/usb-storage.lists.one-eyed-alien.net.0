Return-Path: <usb-storage+bncBAABBQWD6XVAKGQELTQYQJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5FA97E8D
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 17:22:44 +0200 (CEST)
Received: by mail-qk1-x748.google.com with SMTP id c79sf2457491qkg.13
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 08:22:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566400963; cv=pass;
        d=google.com; s=arc-20160816;
        b=fcsSCe8bC6GvkOTacXXkAb9gfqDkc53Ifg1Dn2cgv7k33ncd3XItlag+wXrWZNtva/
         A7R3pMAEFJReXdQkgKu/BVsECHTswt+6Pn+ZW5oPPbCzhNfdvywjYzoieeti1ra3XgEY
         aU9ZldEOlUhvOBIcJLx7CFeIV6KqQa+z5ePKBvHP4f2jTDv2k/fLF0vLKvTFGOKYwcU2
         glLLEoMnerWD29stoCb5NnQUZUuWYm/lSrJHYQx74rNJ4dK0BpsWEY2wjIiUkkxPXIo/
         i3gTCvSB8dz9aN+oRle1pzBcBoaDfLor2PHmsiw6bH8NVnZQa6lDb8nYmZ8ygTIE9/79
         ZRAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hBX1BkfVWtDD/eOQSA7qgncuNOXT8NWiPDtQP1XEXVs=;
        b=HZIZgguPtSA080f73zGdZqRcq6jumDVRFaTwozpzhtLa5Jq0446olFs/gQNgUtA69I
         q0k2HD/82J0fvrQUKAJtS9Q8G/ETt5ntrKh6Mo8QPvh2xTkOIKizpp1JNIX5jm8diSnj
         0wl+gGymyuBNpbsOGnVWmIua4IZTLmoqX/DSYpH9W29zpc3XT3AXw3EfbFNCl1mejGbH
         UFDLkmj7v2T4kvzKs/DVxO6sYikzvRuWEtXPvTT44PJIcnNPlbha8wBRbcva2m8Cgsi2
         9lg04v1ITkOmKECFIcu7hkykwpYh3ejJrEa7h3eRnfQlNmyl/aQCKRsTFpIP8ZAhEpIr
         2oQQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=tD8p42oC;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hBX1BkfVWtDD/eOQSA7qgncuNOXT8NWiPDtQP1XEXVs=;
        b=bpl0nl9Si4xf+Dr5UWCogiUAbkDWoflZmYWpSuNIeE7glz7XroKkK9EgrDv+E+tjcD
         Ak4n72GRtmr9XOQAOxck++CcJi4sq3mv1AGKQaDRSdLG9HclbOSoxglnwVm+oPaSBink
         9ZMbLygCXuCLH2ODx+oyDYG2BRLwLeeA36kKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hBX1BkfVWtDD/eOQSA7qgncuNOXT8NWiPDtQP1XEXVs=;
        b=CZZ5M/c3kQgf3mwtjT/NIXlHFBaTETEv5B3Zlg0lp2PGZnlBuOAr4aCEpE4dswMbpi
         t4lF0+S+sEXkfLtktN/2N8hH+GJZkR8D/eK2SKWXxeNxa4EMF4QghTSYGc4OANPOvwa0
         wPsL8RuGYEPYWYU09JewdSYx/+XCnLwg1ptLMynL82amH33KV+eQzjftUd+A3vWS4+JM
         5CBKFiYSiIoqydTj8nLgtMjGmvFbL4cq2XpBzrXcIxtZuQnrL0xN67OuxQTBPoI4KCwH
         kWqUAs8mp8xYM8DEBLjSvudNqPOBnNgwJAXGsxxdueIJA9MeGHO0RGaBfw3LJnphdMV5
         HHqQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWuTU4c1PHNKATZB9Tl8dgcJdnGa1pk4YTIH3y8XAi+HKvtkf6L
	iaXvil452NP8wWkmApTj/GvtPg==
X-Google-Smtp-Source: APXvYqwXEVZGNiQaU9DuD1RES1NtKp6c2/MSfdBGpu842S4QV53px5EVIvDCsKVxFzeKTezCQaK0PA==
X-Received: by 2002:ae9:f804:: with SMTP id x4mr31424024qkh.178.1566400963064;
        Wed, 21 Aug 2019 08:22:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:129b:: with SMTP id w27ls658861qki.1.gmail; Wed, 21
 Aug 2019 08:22:42 -0700 (PDT)
X-Received: by 2002:ae9:efd6:: with SMTP id d205mr31966429qkg.354.1566400962874;
        Wed, 21 Aug 2019 08:22:42 -0700 (PDT)
Received: by 2002:a37:c08:0:0:0:0:0 with SMTP id 8msqkm;
        Wed, 21 Aug 2019 06:12:58 -0700 (PDT)
X-Received: by 2002:adf:ef07:: with SMTP id e7mr42247395wro.242.1566393177931;
        Wed, 21 Aug 2019 06:12:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566393177; cv=none;
        d=google.com; s=arc-20160816;
        b=m7zYO8VPRxn0XkXgTBhcQFA250w5qst9FyKbcCY0Kfkg0WI07iUbkVRj6TxPKLEWVD
         VJNEU/VMFVwZuSOzCMuBlId95boN7DO8A412zEAz8z5k/cIHPIakL8pnjlxsFYAGDQjI
         5EwgFKxvLvclRUz6MWgd6DM4pX98q6oSNlfPGn8HTWgBtgQ00JmKFzrBOUySxKjmqP1j
         vzURXbNq8EIYifMDo37KqZfh9tD8N2WpNVEKp65R37ErY1eOaqrJ40aIyxA01Cz+BctJ
         Lx8esz+ReHYmhpX/kXlpEHRKTxzObBwYSk3zz1DHL2MJrKoCdzNoP3sWniEKdH1fJVws
         Ztiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3W7OIKWVX6WxkwIdgHyI0+xyh1dbNAC13qBYkWnh7Cg=;
        b=RajN0RA4W5h8klKo2HwMeyofv2Vu68Yul3JaHf5+eYpaeapG7NzwgfSCRIGbU+JCMo
         bAPgCMKnT/borujJFZ33wJYpZ1Vru9H4u8p/cw8wn52I8ABGe1DoQUB4J5Mtpxux3al4
         TEzxABjd6wWJtPZimLrPl42NZbl/QM/qXDz+xnTkWj6srNtOuVG5mk3bm7NmgqI7dXUM
         vjwcuf1RyMxmKt7CSjpE8qXfRBvl9MGdlSIl/Vrwsi1vR+vXp4JrLZLhz4Qkug8F8FOI
         m7Z7vt28Kd7cSAPibiWfogAZ17MEC3kZwwMypbKKwvWRJMH4koAO9FFP7p8m5OEeNlQC
         zhrQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=tD8p42oC;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by mx.google.com with ESMTPS id c5si8626977wre.224.2019.08.21.06.12.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 06:12:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1i0QOy-00077n-17; Wed, 21 Aug 2019 13:11:49 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 49C5330759B;
	Wed, 21 Aug 2019 15:11:09 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id BF01120F0D378; Wed, 21 Aug 2019 15:11:40 +0200 (CEST)
Date: Wed, 21 Aug 2019 15:11:40 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, arnd@arndb.de,
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com,
	jeyu@kernel.org, joel@joelfernandes.org,
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
Message-ID: <20190821131140.GC2349@hirez.programming.kicks-ass.net>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190821114955.12788-1-maennich@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=tD8p42oC;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Aug 21, 2019 at 12:49:15PM +0100, Matthias Maennich wrote:
> As of Linux 5.3-rc5, there are 31205 [1] exported symbols in the kernel.
> That is a growth of roughly 1000 symbols since 4.17 (30206 [2]).  There
> seems to be some consensus amongst kernel devs that the export surface
> is too large, and hard to reason about.
> 
> Generally, these symbols fall in one of these categories:
> 1) Symbols actually meant for drivers
> 2) Symbols that are only exported because functionality is split over
>    multiple modules, yet they really shouldn't be used by modules outside
>    of their own subsystem
> 3) Symbols really only meant for in-tree use
> 
> When module developers try to upstream their code, it regularly turns
> out that they are using exported symbols that they really shouldn't be
> using. This problem is even bigger for drivers that are currently
> out-of-tree, which may be using many symbols that they shouldn't be
> using, and that break when those symbols are removed or modified.
> 
> This patch allows subsystem maintainers to partition their exported
> symbols into separate namespaces, and module authors to import such
> namespaces only when needed.
> 
> This allows subsystem maintainers to more easily limit availability of
> these namespaced symbols to other parts of the kernel. It can also be
> used to partition the set of exported symbols for documentation
> purposes; for example, a set of symbols that is really only used for
> debugging could be in a "SUBSYSTEM_DEBUG" namespace.

I'm missing how one can prohibit these random out of tree modules from
doing MODULE_IMPORT_NS().

That is; suppose I stick all the preempt_notifier symbols in a KVM
namespace, how do I enforce no out-of-tree modules ever do
MODULE_IMPORT_NS(KVM) and gain access?

(the above would basically break virtualbox, which I knows uses preempt
notifiers too, but I don't give a rats arse about that)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821131140.GC2349%40hirez.programming.kicks-ass.net.
