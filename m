Return-Path: <usb-storage+bncBDJNPU5KREFBBKXW6O5QMGQEWAXTXGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A172A03BAD
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 11:00:12 +0100 (CET)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-2a7d6283167sf3232595fac.0
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 02:00:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736244011; cv=pass;
        d=google.com; s=arc-20240605;
        b=G1612Vgifc49UTqK91k4Wqt/QdbU5xWuKcqB5J5uKu/ANIa0T2XvxWU7LTCYmUJ8BI
         cVXK5KnGai/tjwuXqfb2c+8RZQ1Q5m2LpkZgj+9WFQHfROl2n0s/DoK/g5ZQkiVbjEg8
         rtNePF0orzK4Ql0FNaqVGIrfycZvdNPGeCmyhP/B0/phksHxPd0yDMrG7S54OZa2WyBY
         IVQIojLpfG3J4oyO6rhQWwCfRsAz3JjCjL58Zku0QCsTHNQDIzsr16/ObqurCkrT+32q
         GpFaS2+F/Fwc9CG7G4LH/ww2TauxSgwklhhVTyiouycOSbPndbiGUki4iBpb2/GYTkyT
         Wz4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=XYg6t++P4Mox08TtTgq9KValJown+F5wZWsb3uoCXrU=;
        fh=/ElSxVR7wjp0+Yi8yq3j7dgNztDauuAhHhPv5GNl1/A=;
        b=K6tvL3r/VAVvXM4xnaZ48OWjlnxWGy/7Sm3zap+rqr3B09T2YUmQFfQ8MQ690rI5Q3
         Ijoz+7X1Cf9poyI7Xj0K3h6Xlt6pPgQE614te7hWT1YNwrB3Wgf7cogi7LuPaEhWCOVg
         6SjRM5x8TZ3AXKdzJ6zsoj3y4Ea0K6Iztboqi3C+3zsJDaV3ly/idv6TDDmH4sxddkrv
         h99WXCtz479Sd0QdvBlJ2KeryjcYv5QFWVnBw5zKyQ+O/DBHPGHh0nxoaZV7Gcs+vxkO
         hrVldcIH7Y+DElnBt1reOubQZMftS3sXncE/NoN1OslBreebqK5sC0ru/xPP6tK+yqhT
         KmrQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="XRm4c/7f";
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736244011; x=1736848811; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XYg6t++P4Mox08TtTgq9KValJown+F5wZWsb3uoCXrU=;
        b=Ox7eVTnpfNzKwgGID1io9mCo8NstaVQRe5nkIhvkyMaDbRm9kthWNcpjFJzAw3ioQp
         WZgtkJLUyWjSQvKR+jwpXtc6BPTEQR72a11eWTSppaa9FgQujFEVqnrLM77vgSS7eKaN
         UloRij06F/F9tH3NrxZ9ZDixWd+ssGlI8MiyY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736244011; x=1736848811;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XYg6t++P4Mox08TtTgq9KValJown+F5wZWsb3uoCXrU=;
        b=i+J3dP3mr4zJUi+7MBOCW0rrs3ZTbKrp8DYsVyFSuLh1qi+Ym43jBFTIFzR3E4eeSv
         rfRcCilDefLv28uDWrmSYO4a8DOQ2bWvEKSBwsPZTEUa0QwvDa8jXTKG6ElZ+Icn6Hij
         hLRPVBGoW6ZjB85qIbybL+xIeZ45NEbfxJqeHyxuZgcV1UK/rmHcaRL0rX4ctNVpxrut
         zadChGd2ZFGYcWlRSghryyY6jpeVKsdMv1BhPsf2TznFjoSqFiXPGHZwikW4/XmZ5gvc
         V0/jymoN8TJ3U4FyIsfxLYU2h+KolZ/csDyKVIFbg9eqMKaupZzcJbrX/t8oSND6vw9I
         mswg==
X-Forwarded-Encrypted: i=2; AJvYcCW1O+AswREhd0LdOPDr7HgNfOh/OLZe0PQKuvnWeBX+0VD3tipd3mBD7S5Gzm+xJZfJcsjs4g==@lfdr.de
X-Gm-Message-State: AOJu0YyWttRG+qxMNFDj9U2PN2gMisYR/YsBW1xjdnR5RTlzUSxToxAi
	8vW1irNF9jc+h5SsbpAEgcHYiGD0Pj3KxUvxnm5r5KyJdqEiWxTc18dyOyVRFgk=
X-Google-Smtp-Source: AGHT+IGTgN5A+OHnsoQ7jbwpop/tsGsbFeDti/6wkG6qQPJSrPRK+VmHGB+sg37kxqLYzgj2Z85Rsg==
X-Received: by 2002:a05:6871:a58d:b0:297:2763:18d4 with SMTP id 586e51a60fabf-2a7fb0b4791mr30666188fac.15.1736244011155;
        Tue, 07 Jan 2025 02:00:11 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:17a2:b0:2a9:5c2a:c3b8 with SMTP id
 586e51a60fabf-2a95c2ac490ls496328fac.0.-pod-prod-02-us; Tue, 07 Jan 2025
 02:00:10 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUoC5AK9F+MBDm/0uiyhgwGJNRumeQ2eRBhOqZjKcgVJugYLPlrBL42bbZGiaV6dRq8KywiLZS4NuvDBA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6871:6308:b0:29e:57ec:34c3 with SMTP id 586e51a60fabf-2a7fb431b82mr22930287fac.32.1736244010099;
        Tue, 07 Jan 2025 02:00:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736244010; cv=none;
        d=google.com; s=arc-20240605;
        b=W0ppIkrbt/07+zNReWXbnLwaTeilZ/MXiU1RHwJUi+n59TGnoVYv5DmPotgWq8C4pz
         3Q/OqXeC6cSs9rsAMwAM3DJq+sKxtXAeZus9IySxuHsQnZPqfp94WluRbyIWD73wtGoq
         TvZRTEDFTNRYR3oACsNJEFv2pz32sW0t1BLdnWlXlre6Kyjem3A7gcvTbg8fScEH5/pQ
         5fNLZu0TG6iy/v6X+8oInTNLvf2DCyaBF0XzvIheKQKbC9HLI0n1k9vVQEDO7bOc/bf1
         w5jqIPEg+q/zLoGmFzpalxKBSrNK3wQ75NattIh3ZKLd4A7XMBwD3apwUe4pyrItf/bg
         e5qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=fkAaqo8x1GSVMibKFNYwrNppF8oNybdZNtqRi7O74Ts=;
        fh=i1lazSQvwm0uMbBgjLZvsDbOHtpcdX7/txCqPFxtsys=;
        b=MAipcxNTFpG34J38p3YDkINld3f//cyttf+Z29RvgJjWU/bKqlbvG9gmIwmZMw7Fu6
         d75lfEX8tV8YLeisv+QdVVag3pxqSEWDXql2o0EnIEd1gPtYlJEUvPQHED2cu8v++cwx
         RukCaYx8k39wROOOIvKBvz1PDqS80ib/jOrGGVJNR5svDbkX47aPv2hdTU+B2nc4KEyv
         kMK3+bWfnGYoxvuMV3lE62/Vq5fLN1PQMo3h2Lo1pXiYNVsffIrqf2lK2OXfqZwzM9h9
         R+Gij2XUzMKxibWLURfFAOasm3jSuBah+q9HQVzer/k9l4JU26S3wLpWlh9AhBi0spdL
         rXtg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="XRm4c/7f";
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 586e51a60fabf-2a7d7499cc5si24113480fac.26.2025.01.07.02.00.10
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 02:00:10 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C1F205C3F07;
	Tue,  7 Jan 2025 09:59:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70CF0C4CED6;
	Tue,  7 Jan 2025 10:00:08 +0000 (UTC)
Message-ID: <206497e1-883f-4901-b061-b3ddb02965b2@kernel.org>
Date: Tue, 7 Jan 2025 19:00:07 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 7/8] nbd: fix queue freeze vs limits lock order
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-8-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250107063120.1011593-8-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="XRm4c/7f";       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as
 permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Damien Le Moal <dlemoal@kernel.org>
Reply-To: Damien Le Moal <dlemoal@kernel.org>
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

On 1/7/25 15:30, Christoph Hellwig wrote:
> Match the locking order used by the core block code by only freezing
> the queue after taking the limits lock using the
> queue_limits_commit_update_frozen helper.
> 
> This also allows removes the need for the separate __nbd_set_size helper,
> so remove it.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/206497e1-883f-4901-b061-b3ddb02965b2%40kernel.org.
