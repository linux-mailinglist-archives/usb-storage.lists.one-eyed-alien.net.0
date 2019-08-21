Return-Path: <usb-storage+bncBCK2XL5R4APRBQ5A67VAKGQELPNXS5Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE24987B1
	for <lists+usb-storage@lfdr.de>; Thu, 22 Aug 2019 01:14:13 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id i2sf2661210pfe.1
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 16:14:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566429251; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cnrc+OuU2iT7ugy5qq9dBZr97fHae/Xg5xvB/C8j2Ygxei5c98K9P//BcaZg7ztyQ2
         FrXxMh06FiglO4y/eYm1AC4+bg+qnNf7TsD1rr9pw00Mxlce47IjWHtm44Zape1Nc2O6
         ShHehw1TTc00Wmx8Ik75GxLcy+edKenzGQ4qbtmtz8LAIRZtqIYkQ9Ma/BpSO8CveWOi
         s3jkujHOWb2xiF2sluguL3lJnxPTt9xQnZdTeS4HeQxI0kaEWFmL/SmCM8FiayQDSxVa
         tfU8ckMBLD6v8wxJ8QbeKZZt88c4qkGG3+B+gLFq+/KniIUcJqOee3TsGeiKsidggbkC
         6Wcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=PTP07jezObbO9z6rtfE3Ngo0b39agxMzXGXBU7kldlU=;
        b=VqoN5kYChxJ5YEl6syQid+gktpON8kpLzf8m3Qn2WqYrsgOWPzWIKx0Od/vP1TeOKa
         UPnFTcmcKh5JWjhhiIXxBDpA6J3Mg1/E3VCD6yeztW8uOD94pYyuaHvKdwHVJRvyy//D
         pXV88wcDt2r1cdN2dw2lgLismgQbdE+P/ITjAphgjKmaxyNSXdqVRSNoy4Q+t6rAu2h5
         o4gYeCyz7O9IVraN3rM91HpPVIutpCkalkxzRganD9RUlhnC2RjUdKnmAfxkC1vn0LIW
         X656yqwVPiBFrqGvoXOlg1/4u6Fe589743YHvqFg9ambtKyVPpzQeLnHQSB+zrz04WzM
         W+Aw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=LGr1j52G;
       spf=pass (google.com: best guess record for domain of batv+8278da87f424520a76ac+5841+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+8278da87f424520a76ac+5841+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PTP07jezObbO9z6rtfE3Ngo0b39agxMzXGXBU7kldlU=;
        b=CJkXVQqmpkxRbHwp/0VXVL+++nADwDMCWO+OcEJzJTMrR8Fng7DIJi9XBUU4ncFTlw
         zGUE/a3bX4+xhfaPaJS5tuQKmn41b1KKOKDH9sJgCa0ZZFX5kSvL25H6icJGcLjRnYNK
         Y+Wc+zKWZhRCsSsfl/GT6v/evXwFhQxSWITd0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PTP07jezObbO9z6rtfE3Ngo0b39agxMzXGXBU7kldlU=;
        b=IDoKwWjxR3WVi9U3fWZEaiiZ8AnMpoy20ClpjuD25ydiL0OkIloFyIbgilExlm/nRo
         XZ2vhswCKNiqgd9k3k9kF6JsWXHE9cXBJhDP0cuH+elc4+ZK1ISmkNqIUzPZw8478lg+
         qRuJaXolzdFn/lDgNVQwmomUvBa62203CwTkmwrMzWg3IG9wuFWPNrolaR1QVJBJCpi5
         KZILp4YhgenUxgAEIW+nfVDODoJQVjkg1178csDrQxColQTaD13yfqKHp4F9WUl1/vq9
         9/nCLt2l7BB66GCDdzx1N36oReUYwGFxrRFdo6Mc5JOJdvZwEutpR2qBpVQXj6ahAs5D
         EAWw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVlpuCxsul5IBAIjbMBoQqGCFa9K0/EA8EcUa+TYjZgW/9zZc/3
	8geER+h6U1WmAES4qYXJheRnTQ==
X-Google-Smtp-Source: APXvYqwND/GUeL21CAj9P628xA5A/QzzigQqrpxUwhfDfLa7oACll7RmtJg3/RNSDAMMNPV5w2szoA==
X-Received: by 2002:a17:902:e413:: with SMTP id ci19mr32660980plb.256.1566429251594;
        Wed, 21 Aug 2019 16:14:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:580d:: with SMTP id g13ls780402pgr.5.gmail; Wed, 21 Aug
 2019 16:14:11 -0700 (PDT)
X-Received: by 2002:a65:52c5:: with SMTP id z5mr31368058pgp.118.1566429250934;
        Wed, 21 Aug 2019 16:14:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566429250; cv=none;
        d=google.com; s=arc-20160816;
        b=c+a07SIhXU1bsMdMwo4BRc7GSb/+lpWXXWhCwP7QaLX2n3+p0p/3DttArleG0EDY4m
         ++CNPI3EQxQT6fHfOAipDQbHaIbihcMPvrmuYdxn80vhAfUt2vJ6EPWP0vEFKsR1Jlhv
         PTQM1Li8Hwg4wh9VscA1vbYsHlG4x2SHcW2iozUNTjG6vXadDIV0ynQ80xKGAQ/q/eFr
         F3anRf3FFGWdfKMsnqKA+JgW3IXccZd4yLISRKeY1Dn0oajDvVuJAuj8Q7b4xktz5wH4
         tt40NalJbjb7DHSVKlNtvDW56YbM/HhA7vHtqAUF7qSSN/Gy6P9/2eob2dc5t9pYWpeo
         m4Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WM7SZ88kyqemBkIYTm2NML5mscgb3zmbfZeZ+GXNIXY=;
        b=LauhlNuhPxuASRhf0/jNAYySriF1D69GgZ72s3Mt0P3uVM9l0FSSZRcFxzm8gLSuHI
         MwDa0uhPf2UU3p8OzIGx5p8OZ/yVo9GfG7JPfei4N8BfdcJNCruFpeFc/y5riB1XhY5z
         Zfp9jh5SxFY5XzlXZBQSTmhqvtUz36ZQKVhEMwEaynShqgDAxnKH3M0k5mm0Tg5bMq+k
         U9b6qSqDWrsZO4EvVTjuDR9GX9uS5Pbw96/gZBstvxtLUsS4S8S7Hkfo22pOMQBojllp
         xnL8ugE6QaNbZWD1CNQW+vgFC+eepCOjL+GUJidaQ++G9Ty28+9yVGkyd4mDkGz+Nrco
         DA6g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=LGr1j52G;
       spf=pass (google.com: best guess record for domain of batv+8278da87f424520a76ac+5841+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+8278da87f424520a76ac+5841+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id j18si16602436pfe.235.2019.08.21.16.14.10
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 16:14:10 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+8278da87f424520a76ac+5841+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ZnF-00059G-IV; Wed, 21 Aug 2019 23:13:29 +0000
Date: Wed, 21 Aug 2019 16:13:29 -0700
From: Christoph Hellwig <hch@infradead.org>
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
	x86@kernel.org, yamada.masahiro@socionext.com
Subject: [usb-storage] Re: [PATCH v3 10/11] RFC: usb-storage: export symbols
 in USB_STORAGE namespace
Message-ID: <20190821231329.GA369@infradead.org>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-11-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190821114955.12788-11-maennich@google.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=LGr1j52G;
       spf=pass (google.com: best guess record for domain of
 batv+8278da87f424520a76ac+5841+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+8278da87f424520a76ac+5841+infradead.org+hch@bombadil.srs.infradead.org
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

On Wed, Aug 21, 2019 at 12:49:25PM +0100, Matthias Maennich wrote:
> Modules using these symbols are required to explicitly import the
> namespace. This patch was generated with the following steps and serves
> as a reference to use the symbol namespace feature:
> 
>  1) Define DEFAULT_SYMBOL_NAMESPACE in the corresponding Makefile
>  2) make  (see warnings during modpost about missing imports)
>  3) make nsdeps
> 
> Instead of a DEFAULT_SYMBOL_NAMESPACE definition, the EXPORT_SYMBOL_NS
> variants can be used to explicitly specify the namespace. The advantage
> of the method used here is that newly added symbols are automatically
> exported and existing ones are exported without touching their
> respective EXPORT_SYMBOL macro expansion.

So what is USB_STORAGE here?  It isn't a C string, so where does it
come from?  To me using a C string would seem like the nicer interface
vs a random cpp symbol that gets injected somewhere.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821231329.GA369%40infradead.org.
