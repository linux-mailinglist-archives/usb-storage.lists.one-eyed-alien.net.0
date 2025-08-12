Return-Path: <usb-storage+bncBCC2JRVCV4NRBN565XCAMGQETWZB7GY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x447.google.com (mail-wr1-x447.google.com [IPv6:2a00:1450:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA84B22BC9
	for <lists+usb-storage@lfdr.de>; Tue, 12 Aug 2025 17:35:22 +0200 (CEST)
Received: by mail-wr1-x447.google.com with SMTP id ffacd0b85a97d-3b7889c8d2bsf2881495f8f.3
        for <lists+usb-storage@lfdr.de>; Tue, 12 Aug 2025 08:35:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755012921; cv=pass;
        d=google.com; s=arc-20240605;
        b=FJU3hm7juX1q0jbvf1O7md8ZegUjb/6xUJmMGwzha9j19lpisjTVA6Kd8tBOlMdwrI
         d1Pp5wSMoKKYiLD9o68sVbdxZ4BgntRCnOs5xpe2TWp5866lKqKTi8aVx0BecACxXBO1
         aUVzQAek8/9GftaCgABihXDtvwT81ll+qY4M9v4gt+mO4ccbknrkOHBEa8V0LoSXUp9l
         4mYMW04Azdqptj6oCYCuGKds+lzoQ6nQo5L/U4IO+0UcieA2638XxGNuEe3qQev14BGv
         vUWUQnVPcEB+sywmw+4NGD0ACEBQf9d42QYJzlGypRrnE7k7veF3gPXPbVm64ZuAWNwn
         SuUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=uQQgbe6CdJO/Bqvpt3wtDiRt07DK/Ue7AXIorJNGG04=;
        fh=kZDLwy22hirAtGkZTSLnrcGsRCUX7gV/o0HGfUhewPY=;
        b=kEFyRSErP71cFoKXGZhACD6xxMYdiW61DhW6ZFGrKyfoWffhlitKK9W8vDMz+Eecdk
         GJK7umZMkVKpPX1IgrfhVd4jwgyBPILi7LjA4wp8AeK31Tfr4qcqIeS4g/Vr9sMMgfN7
         fxha6csjAstCh9c/vXhl6uMKB/C0MhinGjDX9Zigrybl+qxfXrc+25scyKO2F3y85u74
         d5Z4BTYXDRyujvuKL2CDQhb6sVCGxm/vzfBCenOmW5s/PigqZ2NoustMRbDnez+0Id1i
         WfzcO86iX2XQLMLUeUv2CiCN0nt0e/dNGcPicrdFPP/qL9ITPd8xJpmsueR0fZhdDHZB
         bFXA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=w23n4vbn;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::ae as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755012921; x=1755617721; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:references:message-id:cc:date:in-reply-to:from
         :subject:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uQQgbe6CdJO/Bqvpt3wtDiRt07DK/Ue7AXIorJNGG04=;
        b=eb/BNelq2sLhb6QyiqfXWzAGAPbuMk7np+0ve31N15WVC/WmmONHVsPBgZZnoYXKqP
         PC97ZDpuNpSA389mQneVRtXTO5EfsHf0SwraHAWiYDDJv0Mw8nv0dhVnpppK3xOLeqGr
         qC7IY0IuKPim/AGIuZv6jVT2nWOiLDlkALZXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755012921; x=1755617721;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:references
         :message-id:cc:date:in-reply-to:from:subject:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uQQgbe6CdJO/Bqvpt3wtDiRt07DK/Ue7AXIorJNGG04=;
        b=TrFcMyNX5McTqz8DQymNyazvd65/RG21KrjjeEHKjJpMm814HN13Oo78y3S113RDG0
         d+aL5dKedE9B/HZ3C11puyW7QhtUsteW4uT4qW+glSXbebnTycTQmTTHOnteu7OsyAec
         8Jc3daXtKoc0Sigd8Rj5ukWSV7yL60Ga7BX7xfn4Ow8oMdtHp7G1LrxVoDPoMBArkoTA
         kGAPeoI3W///HSDQiibJzTBoVawSZxe4g6Sh0XPQFn3dthJNqrRPijRZpuLhNC8Cod4N
         y3MV9DD+tDXWEHMJlz7C4S7i06vWtu7tNjrusMssE7rM+pH2pQBSxAUEh06/V7DHG5xs
         jcUw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUkbFWOICdw96P0wnwI7VZ0yBNzEp3US9v6NMqPVLQBJ+k9KYFn4hVtapRW/P2q4iNRfcPqiQ==@lfdr.de
X-Gm-Message-State: AOJu0Yy8cZUjiDsCp6uvvuW2mgJqVC37lcMqbEUkOmvVIHpJa9l1kNRN
	Fo1MyyCwnXzCd7Hnc+yoIY5siCTtS1X0W6cl8tz9cw2kRq53ZHucnlOevR7cqCONnF4=
X-Google-Smtp-Source: AGHT+IHLlOs+uAoeeRqBK0S5KmQRdriAa2liFJC/L6oCYv8MdE9avPeAKgK33WaCcmZKuWRoGTdRtA==
X-Received: by 2002:a05:6000:178e:b0:3b8:d7c7:71bb with SMTP id ffacd0b85a97d-3b910fe41cbmr3205494f8f.21.1755012920396;
        Tue, 12 Aug 2025 08:35:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZcDF9+sh9Tosx5zxmZwL6ixVibBLhG15xrp6qBZAOiAPw==
Received: by 2002:a05:600c:3f1a:b0:459:ddca:202f with SMTP id
 5b1f17b1804b1-459edc3f78dls31850895e9.0.-pod-prod-06-eu; Tue, 12 Aug 2025
 08:35:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW1DlC+WwGtLYkZ1f9pgfeR6lStL+u+DTA6/d/yAGWjTGKMn/OFthU/wYrGzrg7UcphWBM0C7cTcCmmZw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:630c:b0:459:d709:e59f with SMTP id 5b1f17b1804b1-45a15ab9ffamr3585895e9.0.1755012917523;
        Tue, 12 Aug 2025 08:35:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755012917; cv=none;
        d=google.com; s=arc-20240605;
        b=CBnSK24DTDshjLE33xGYRA9KRqSQoNjTD0SG60bjJ8JVW+2uBh3eEr1yDmJAwvsEgw
         JjnhnGIhvox+894pSVYpd/WwrWl3O9G+qLmgOmz+nSQGZC2J3lhqz7UtKufUk0n3ux9e
         ZMGxlOhMYDyASIGv/+96iAiv3rHMRlY3Pa2IM+FvjAdZOg+1NZx0QiwpNQ/CaBXPGfza
         LGkK9gT4ZiGFuQGBkPzvbqufiXJusd+947A/xyMfMIPtzj2tWtJpuYqH6YusCbtCYKdW
         uSTb+PxV/FQtT4vvMcQYrsoEO3iQkeQ4UJ+10fj8q7rZQV+rQbtIfHtc/I/q40iem2kK
         wRQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=Aya3bRU+icAPQwE00jEQeuvWM/SX27N9+2NIUaDgzuA=;
        fh=AkSgbvTtYnIp7rDOKbmpHLdtlPP5mFyTvMQ5GELUk+0=;
        b=U1tTljEXTXC5r13Gzz1/sradUmKQdfDRM8WMH+Z4OnMr/9Csc+2yvqftX9JJG5VnbV
         vBCnSw4pVNwkEEcp5c98ylNsRNNF9d2VLZoWllAAqPqkHQ9oPSgmcUlmVhuYkHsZJ1AC
         XH/kDFaeBCz6v5RhynawoHiSv5RzbNKNrOHcWteD6C4pDoddXZdEicO6ci7J8vJUagDl
         QvzGjl0eCAt32A3ukpwkOfJPPmo8IkGNswtlg1tFL41dwYcftdymCquYxxnRyq/tbE2O
         DGSF5qg30jXI4e+dC+8IingNMnurNKqYnzEmrMaCNkbh9Duz/x/LfFOSBy/JUGsSaPeZ
         ej/g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=w23n4vbn;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::ae as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com. [2001:41d0:1004:224b::ae])
        by mx.google.com with ESMTPS id ffacd0b85a97d-3b79c4cc6fdsi16712728f8f.92.2025.08.12.08.35.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 08:35:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::ae as permitted sender) client-ip=2001:41d0:1004:224b::ae;
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: [usb-storage] Re: [PATCH] usb: storage: realtek_cr: Simplify rts51x_bulk_transport()
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Thorsten Blum <thorsten.blum@linux.dev>
In-Reply-To: <2025081249-guru-uptight-98bf@gregkh>
Date: Tue, 12 Aug 2025 17:35:04 +0200
Cc: Alan Stern <stern@rowland.harvard.edu>,
 linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
Message-Id: <41785047-0F4C-4998-8B49-C8D52AB3E5A7@linux.dev>
References: <20250812144358.122154-1-thorsten.blum@linux.dev>
 <2025081249-guru-uptight-98bf@gregkh>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Migadu-Flow: FLOW_OUT
X-Original-Sender: thorsten.blum@linux.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linux.dev header.s=key1 header.b=w23n4vbn;       spf=pass
 (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::ae
 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linux.dev
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

Hi Greg,

On 12. Aug 2025, at 17:00, Greg Kroah-Hartman wrote:
> On Tue, Aug 12, 2025 at 04:43:58PM +0200, Thorsten Blum wrote:
>> Change the function parameter 'buf_len' from 'int' to 'unsigned int' and
>> only update the local variable 'residue' if needed.
> 
> But why?

The parameter 'buf_len' is never negative, so using 'unsigned int' is
semantically better. Since both 'buf_len' and 'residue' are now unsigned
integers, we can directly compare them without the additional
'if (residue)' check.

Unnecessarily reassigning 'residue' to itself has also been removed.

> Update the rts51x_read_status() function signature accordingly.
>> 
>> Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
>> ---
>> drivers/usb/storage/realtek_cr.c | 9 +++++----
>> 1 file changed, 5 insertions(+), 4 deletions(-)
> 
> Have you tested this change?  What caused this to be needed?

I've only compile-tested it due to lack of hardware.

I came across this because Coccinelle/coccicheck suggested using min()
instead of the ternary operator, but I realized it could be simplified
in a cleaner way.

Thanks,
Thorsten

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/41785047-0F4C-4998-8B49-C8D52AB3E5A7%40linux.dev.
