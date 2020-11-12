Return-Path: <usb-storage+bncBCUJ7YGL3QFBBZFTWP6QKGQE2XTKFTY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6EC2AFFD2
	for <lists+usb-storage@lfdr.de>; Thu, 12 Nov 2020 07:44:54 +0100 (CET)
Received: by mail-pf1-x447.google.com with SMTP id d6sf3193853pfn.15
        for <lists+usb-storage@lfdr.de>; Wed, 11 Nov 2020 22:44:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605163493; cv=pass;
        d=google.com; s=arc-20160816;
        b=gK2waVENq39Ncy7u/8JofjrU5LDTZLieGxur0Me2rfATF2Zu+gzFwquVfaSROSbOof
         fimnlK3bBNr88T3+NY0nonJ67Gr2FrK/rlaWr6+iqLXCBCnV6G4hvQ/jvuowdIEJ26cz
         PACw4ih/m4TmkwrbBsiRnpQ5+Ew7j8pfIcStJkyrQo75focNuBu8XK11kgPoNcG5ZLAa
         7K8Glt0QKbq19uHrU232kLVidaFvS11lB6O5qzRAB6Ud27zcy8cQqLA4/G98P7WRDBMR
         84hZrTL2t8ix/QJhAvmEilDHqVKT5t+a+XyDOzhcbFHc2rRIk1stbtRMS2PmDREGRE2D
         6b5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=x+P7TVJMAb3cRp0jprERYVWS+g+46uqMNUrhvJ6Qd3M=;
        b=rwAXP1xslzcA7p+Oy1EY+vM7k73NAyu8be73PnZPBgVE7hO/WPtWiXfQSvHuTGZ27b
         r0FycVN7hZG0BeneRSmiRtjs0oDv3fNqSBptdQZTDt7OPyrI68ECc4EXF30SUid5Pb0H
         yu2FiM0PvAGaIz3dOt16eybfxGNi4AO1LyibMfh386iRjfVnG6kBO5Nj5KtDLHUlZ9qB
         8oJlu6vCdgAxqqaq8FpJ7+tqVO+fAiCYw4lSPbhl0wYhFhC6Lq5yRaMGyBvTgq0pJqjs
         j7LLTesBLNWlJ4vFqaI9chd9e0j799P3IdPnRkduRlsbV+/sXqH0OezhxQo7BsxO7DPz
         71JQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PII7FtK7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x+P7TVJMAb3cRp0jprERYVWS+g+46uqMNUrhvJ6Qd3M=;
        b=AyMKMAniYc28ChJ47P6hOdHTKCOpOj0vDN94mJR3ilPqJ91kanA3MmIjvqv/kJCRwS
         W5+titdgY2Kbd6suICZK2QWLocvKPAiGWyfVIQs8DunVqYOz3UtQEHqo5D1Ae76DIcHB
         wUg8wu+6Fy5CsyeNm91WoU1/TjAdV+TTo54dE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=x+P7TVJMAb3cRp0jprERYVWS+g+46uqMNUrhvJ6Qd3M=;
        b=rkOhxthQez1lXEi21L2sdxTKCBbarXRQf9tJmW9RVH05qFptq/1b06+TTnxZdnqIds
         WA35mTXrLsSZeWFLjxmbwhNSuFpe4Ho5ZE34y0w1hrczlLPgkIm412ar0QrBzeaKkv8T
         2EIxhKRLGwdUttSLVGktuDmyNsEYwFGOuVK56DEcrEz7zxlQNxfDkGGnl1/4x8NmlLOw
         K34EyVmx/omXrlxa5cdrSuvuvZKNa0PiSOsn2uk1Amum1YuAf4Q7RUgc1RLeE0qjnWaJ
         lE1wZ/UNrMVmX3muCjZZBEBJY5b5AENlVOwXVSeyEgqknuV5Fc8HKIdZCgAH1F29pwVb
         6Qfg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533ykPq+/Sh90gj1i7JxmjJ/YEEfEj36XdoAzxf4wrZ6Wn4vcqfV
	Y/Ytm+JsM34e7MgN8uI0jzSz2w==
X-Google-Smtp-Source: ABdhPJz6Q1QdMT15a0UBPlS613Mb6WKSN18CR7glTNmO6d38m8ts6EzqvNe5xRyfTaxu+ArG4rukdA==
X-Received: by 2002:aa7:96b8:0:b029:18e:618f:2aa7 with SMTP id g24-20020aa796b80000b029018e618f2aa7mr525502pfk.5.1605163493199;
        Wed, 11 Nov 2020 22:44:53 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:c395:: with SMTP id h21ls1069336pjt.3.gmail; Wed, 11
 Nov 2020 22:44:52 -0800 (PST)
X-Received: by 2002:a17:902:a503:b029:d6:d9d:f901 with SMTP id s3-20020a170902a503b02900d60d9df901mr20969553plq.54.1605163492340;
        Wed, 11 Nov 2020 22:44:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605163492; cv=none;
        d=google.com; s=arc-20160816;
        b=xX93BMwvrEkVOqkdR3HduTvAy8KDuMWkk8ZePNhGcpnCXdG7UKaD4kyMscSpu0h9WK
         TG+A3iSdNc3EesSPgCU/x3e3DMLLvNFRfvzHJ89tASQkIHJQSKLmGvOLWEjBjW0qAWkI
         hyAAi8lwHgB3PYoslJOqXaLWapZrat8HkdbmRlf0fKMxm8glUjSFCVWzV2BO8O/X6EwR
         U+N0l6/i6NLkkwbRovJL0mzIWfUQzu9pnQfCp5heD3KlwFi3nQ42w17g4ZrAcDxysFFh
         Lmpbj2mCP6PcMqDmRPbX8sEzILVmgoJD9Rjr0Hkn96sSip6Qo4eXDGIt9pwsDgjBhnpV
         aV7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1XQqXLWYBuZfCbew5J1cSz9iOhjz3qWjz1NcNiAYLy0=;
        b=vg/vcHwEWAboJtHOCBH8TUzNTu8Y/wX7rMhlO1TgJynWjPik/bqLuAqTlfh4H92NlZ
         kGpU/8rR8asfN9pkA81b9z/O2wOycM7XvIY9PHXzW+04v04o/W0NueJhj4BuGk5Es6qp
         WgvIcGo9p+8Ob/q8ym+RvSWKWsFwuxlTJqN0nZaZFydHj7XaEzP/VYdi4w7ifzJMY90q
         lkoJS/Rk5PSktJHo2pDoZoCsPQdP99JMAUEWkiZKJzjgTp4JHsaMDx1cZ8GDhOK58mZw
         9TmFHons3ILN0uF+z8aAjg47eYWnLmuNu6sRg2oi1uRt7Zigt1KTMkKzyz3c2q17J70o
         iVpg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PII7FtK7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id a15si4365565pgi.1.2020.11.11.22.44.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 22:44:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C78C8208FE;
	Thu, 12 Nov 2020 06:44:50 +0000 (UTC)
Date: Thu, 12 Nov 2020 07:45:50 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	clang-built-linux@googlegroups.com, Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [usb-storage] Re: Use of uninitialized data in special error case of
 usb storage transport
Message-ID: <X6zaHl/RhW5xu89K@kroah.com>
References: <alpine.DEB.2.21.2011112146110.13119@felia>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2011112146110.13119@felia>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PII7FtK7;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
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

On Wed, Nov 11, 2020 at 10:08:26PM +0100, Lukas Bulwahn wrote:
> Dear Alan, dear Greg,
> 
> 
> here is a quick report from the static analysis tool clang-analyzer on 
> ./drivers/usb/storage/transport.c:
> 
> When usb_stor_bulk_transfer_sglist() returns with USB_STOR_XFER_ERROR, it 
> returns without writing to its parameter *act_len.
> 
> Further, the two callers of usb_stor_bulk_transfer_sglist():
> 
>     usb_stor_bulk_srb() and
>     usb_stor_bulk_transfer_sg(),
> 
> use the passed variable partial without checking the return value. Hence, 
> the uninitialized value of partial is then used in the further execution 
> of those two functions.
> 
> Clang-analyzer detects this potential control and data flow and warns:
> 
> drivers/usb/storage/transport.c:469:40: warning: The right operand of '-' 
> is a garbage value [clang-analyzer-core.UndefinedBinaryOperatorResult]
>         scsi_set_resid(srb, scsi_bufflen(srb) - partial);
>                                               ^
> 
> drivers/usb/storage/transport.c:495:15: warning: Assigned value is garbage 
> or undefined [clang-analyzer-core.uninitialized.Assign]
>                 length_left -= partial;
>                             ^
> 
> The tool is right; unfortunately, I do not know anything about the   
> intended function here. What is the further operation of those two  
> functions supposed to be when USB_STOR_XFER_ERROR is returned from 
> usb_stor_bulk_transfer_sglist()? Should the passed arguments remain 
> untouched, so setting *act_len to zero for the error paths would be
> a suitable fix to achieve that.
> 
> A quick hint on that point and I can prepare a patch for you to pick up...
> 
> Given that this code is pretty stable for years and probably in wider  
> use, the overall functionality is probably resilient to having this local 
> data being filled with arbitrary undefined data in the error case... but 
> who knows...

Sounds reasonable, testing error paths of "short reads" is something
that people are now only starting to notice and work to resolve.
Patches to resolve this are always gladly appreciated!

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/X6zaHl/RhW5xu89K%40kroah.com.
