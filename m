Return-Path: <usb-storage+bncBC43DANU4AIBBEO5U2RAMGQERLDE3CQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C136EFDCD
	for <lists+usb-storage@lfdr.de>; Thu, 27 Apr 2023 01:06:58 +0200 (CEST)
Received: by mail-wm1-x348.google.com with SMTP id 5b1f17b1804b1-3f315735edesf2558875e9.1
        for <lists+usb-storage@lfdr.de>; Wed, 26 Apr 2023 16:06:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682550418; cv=pass;
        d=google.com; s=arc-20160816;
        b=ynLF3rN5JJiVlKvFEghC765IDfzGp69BpfmdWrFH/NPV9V8ADe7UtdKQ6pdCLrk2dW
         sD5iINPF8gHloj4MhgVrxTy+W2En0KI/faOa5RY8K+K1+O+6hDWVTl8J8upleFIJZMfl
         7SkpGxlGuVzFXlMZChSE4DIzdrrr45Jt4eRLwF19l2ooHj4ZuCuLzrV8aU/9GtcbtoqN
         Hhd2L18y07uMoy9e5GibleEf7Ck5ih70paDa90y4MLThJLBgn1ZdLp70uoYMKDmSebQG
         cEeyG8do+vtpFPSKEZJxJfjnSClEhjgg3r9EpAbIv4kGkV729k6nT4icHtQEIxx91FuT
         i6Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=VHP+uXvRZA0ntJ4nzqzgj1QAIOYjypVJhHc3dmaerb0=;
        b=fQJXO4GC117yLNkJB6sHa4alu8xqHKHlqJZ3ZWKjMEr0aEHG0jwgrC13h1xP/m1CwV
         L0xqaBjj4LFl7fqd2TxodQmJhGwrgJ3gJ9jLXq569hp0SWDpwfcqbIeQjOLVrYn0fFYs
         5+ccgVENasmI5LMl32W96lKPbBYWy18MJQ6xRyjITGG971UAbYjgbJL2qf43BKgDzDA3
         I0f6/P2a1lmGzk6Mek+ZaaAf84wYqFCjBiUAVYAgEpH8YoyvjE7pik55X7HsbxbOnLa1
         KuIjPvBwyoHrEMcY9aybWW0rPfQkYbL+8rpCiVB+EHO/CFfxm47KfJPt8nZ/4wZkIaIE
         ohPQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of srs0=1gfpuf=ar=freebox.fr=mbizon@srs.iliad.fr designates 212.27.33.1 as permitted sender) smtp.mailfrom="SRS0=1gfpUf=AR=freebox.fr=mbizon@srs.iliad.fr"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1682550418; x=1685142418;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=VHP+uXvRZA0ntJ4nzqzgj1QAIOYjypVJhHc3dmaerb0=;
        b=dJINPemaBMEraeUPBcpdu2z8i1H8SEQBZcgk35b7DCdnPCxt5awgkCECwxysD9KeqI
         9+F10ON6jewIGXIXrheQKHdAU3BIKWsefRGYHFtTJz+XKM1FYXoPszB0nuWb8zAzNqfo
         A2pj1NqMrmQbKHrfES+wNGWLjilABSXEMkj3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682550418; x=1685142418;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VHP+uXvRZA0ntJ4nzqzgj1QAIOYjypVJhHc3dmaerb0=;
        b=RrOTkSAGMxC5YQI2bQ5I8e2D4T4nuvuxdp25pSzvNhf29YiBs5TicjNcKOHmhrAK+5
         oKEtMqfJNNvl40ZhImbSLFNmFX+XKIF643j7CwH7AaXbo1+yiNqm00WZaGfluGaWC2Cd
         fLYr7V7K6OsRpx6F4Sy4l1GjX/UnCKYw9D9WgEJ5IIep/EetDsFCflfVNvnA3+hXUhZa
         7cuC4bRd1brVfZQ53/NbvWqHTvNj2XwqVST89p2XMcxRPrkk2ChviUNdKSM8nZ9eMxj8
         ymZdKr8E01oadv4Mw5Mzngy+2HlLyydOXGXN/vw+SOQdIUW53S5Bo1GQkvBLJwt5QNxy
         rzVQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AC+VfDzBmLywUkZH3yMLzisNaORCD7jdmsrIXqmPSYgK0qUsNYE+wsRD
	JeUg0eBBPu8nLDE53+otJ3Tcaw==
X-Google-Smtp-Source: ACHHUZ4uFemzgT+LzSl+QKR4RBfEgRkV1hofBg2UAotsLQuMSlQRdGqTj6DrW+hY6FkGn4NyQFvEaQ==
X-Received: by 2002:a05:600c:1d2a:b0:3f1:754e:6a0a with SMTP id l42-20020a05600c1d2a00b003f1754e6a0amr1144858wms.2.1682550418031;
        Wed, 26 Apr 2023 16:06:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:59a7:0:b0:2f4:1b04:ed8f with SMTP id p7-20020a5d59a7000000b002f41b04ed8fls148434wrr.1.-pod-prod-gmail;
 Wed, 26 Apr 2023 16:06:56 -0700 (PDT)
X-Received: by 2002:a5d:58e9:0:b0:2f6:1a30:605c with SMTP id f9-20020a5d58e9000000b002f61a30605cmr16045543wrd.3.1682550416653;
        Wed, 26 Apr 2023 16:06:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1682550416; cv=none;
        d=google.com; s=arc-20160816;
        b=jHNpANDT36eXJh+eAUbzhnwZifJ4VEvRRY4JzGsA8GnxYfDW8y7tNTwywG51Sz9wvQ
         bCTBsnF5auEeKDJkXbtTp/ddKoqYRUDHqXqe4w53rq+Yg5SaTyPRc7YsQHr+0ru+o0ZD
         rs5uE1pTjkslv0jC3p9Iw9QC+eeFOGdUF9fqcYxd5mkf2p4SOdRgPcLlH2UtGZShhf5a
         Zr68tLe0xycOHaMZf3upDv75L9/ZR0y0NEttv/mOLkuplBsH239wamMsIPw9oPKUlrvH
         1UcO6UeMNpRz3+RRiBqMEPpZ4jtsEmZbEdr37p2SCLs4tsWThuSqXAD2ibwWOs39z1dk
         p66w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=We76ZQ1ctgqOQ4b1rzcoGRlrooGupcF7VMsbcEyElEI=;
        b=DYrhgYASIrd2DTTkLYi2YSWXtvFVe6SrSJhCOpdn2myiPFv9s2pFgOjwFysSrz8t5j
         hDp8fjQUGypSfIEdNvg2UD8rTscUjANtSNR4wh/+CXiIvc5ZUDFgvff8XWebwWsZTJZi
         pTdGtUsTyy4/lrRBySW3zX0NlYwaI4x5pICRYBQLTcvCyMbYd8q1c+HF7PGyV6vblw2m
         0geIx9wekm/k//4jbuSWF9Po+vzXlNzT3Qxk458j4nHZoqMe0NX1gglrbhM7BCV1kRFr
         znsES7SFQx7ARaeeOvmouuN8B9IuEgR0SrTYRfYj4KUXXNc54umM556hnTmx3LhsBrwS
         TB/Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of srs0=1gfpuf=ar=freebox.fr=mbizon@srs.iliad.fr designates 212.27.33.1 as permitted sender) smtp.mailfrom="SRS0=1gfpUf=AR=freebox.fr=mbizon@srs.iliad.fr"
Received: from ns.iliad.fr (ns.iliad.fr. [212.27.33.1])
        by mx.google.com with ESMTPS id r12-20020adff10c000000b002f626341c9bsi11910654wro.346.2023.04.26.16.06.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 16:06:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=1gfpuf=ar=freebox.fr=mbizon@srs.iliad.fr designates 212.27.33.1 as permitted sender) client-ip=212.27.33.1;
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id 3735A203F1;
	Thu, 27 Apr 2023 01:06:56 +0200 (CEST)
Received: from sakura (freebox.vlq16.iliad.fr [213.36.7.13])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (3072 bits) server-digest SHA256)
	(No client certificate requested)
	by ns.iliad.fr (Postfix) with ESMTPS id 1D04C2029C;
	Thu, 27 Apr 2023 01:06:56 +0200 (CEST)
Date: Thu, 27 Apr 2023 01:06:55 +0200
From: Maxime Bizon <mbizon@freebox.fr>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [usb-storage] Re: Reproducible deadlock when usb-storage scsi command
 timeouts twice
Message-ID: <ZEmujxtkwV8wEhYh@sakura>
References: <ZEllnjMKT8ulZbJh@sakura>
 <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
X-Original-Sender: mbizon@freebox.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of srs0=1gfpuf=ar=freebox.fr=mbizon@srs.iliad.fr designates
 212.27.33.1 as permitted sender) smtp.mailfrom="SRS0=1gfpUf=AR=freebox.fr=mbizon@srs.iliad.fr"
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


On Wednesday 26 Apr 2023 =C3=A0 15:20:07 (-0400), Alan Stern wrote:

> What version of the kernel are you using?

6.3

--=20
Maxime

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/ZEmujxtkwV8wEhYh%40sakura.
