Return-Path: <usb-storage+bncBCUJ7YGL3QFBBZXUUS2AMGQEXTPWAXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A28B929399
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 14:36:56 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-25e2cc60ebasf2404149fac.0
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 05:36:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720269415; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hp3xTlX8O1+SjKbLlPoK8U0PSvKcWxspn3kd806qUx1lDNBjstV+QwOd8krIEZft6b
         ONf/7RPxSuH38V1m8cr+1DAMgd7QfRM1fX59GyxT5i3pFvqzI4YTqkPJzW7CJB2PL4am
         2rKCdqetNvm3Inb3EkVBpcVtTYBwhRNT+grOrMHNjrlw+hWYVsl+guLVDjXbVfklp0cf
         MBjGsmFFZXn5h06pILWXroSkO9+/Noow/qoQPUhjXpVi78onSn8BJ6z4flLlD+XCir3r
         eN+T7v1fmKuGBcvvy1S34KghFlQJqoDDLl+iEyIwmdPKbhrDSE2mutJsWcrGecHvAOZ8
         PTog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gkqbn5+eyr8Huajn8MGu6cvtZorJ4/oFzzsilleArRY=;
        fh=nKd+4PSaQsb45AS1x9Qi28aK0kggp+NFD05Z+M1ipNE=;
        b=RKGfTkVELoTLgPa91/Y41JmqtVeSrjsFLNWuBm2zDhJcdR9ycBVX1LFQyFtNdFyBLH
         kXk3PlF8b93cqJLojKPkXVdfpjx34yLiMklxzohENYHq97boBIH1vyyisasdosaVuG3d
         yOq64JtL1+mdaPf0KPXRAJNyLfW69XNplimruCSB5hJ/9ojBrEkJYL4xpk6KEuM7pXMJ
         cKByvidPCeoSPfAxXFH6MhuWiR0dJuTTrrBHiIS28AF/FAYe2d71OErVzr6WPFjYDwQe
         mxjwXRy9kq1pc3ZgK6bGizSlw5/au8TeYkOdMz2c+yAoz7RDXLwYPqmNlkGxT7d+HQQC
         jSXQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="E6mHXN/t";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720269415; x=1720874215; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gkqbn5+eyr8Huajn8MGu6cvtZorJ4/oFzzsilleArRY=;
        b=H6qGzzj3mkM62xtsWQ3wB+o0bJN9DePGZsMnl5N5gF0G3tVHDMdgfYDF47euJnvS4t
         ta6NqA2GhAhTMo7u0jh9IGnFeZ0pLGQpBfnVN1X/Y5wvk4q+CHVJPKwAP+ROsgkhAHsz
         va3JcVCklzAknncYRtOjtveiTrQG/3rCNll34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720269415; x=1720874215;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gkqbn5+eyr8Huajn8MGu6cvtZorJ4/oFzzsilleArRY=;
        b=bvA4peUUsHgbuoMMLE9Eui/0IG3WVuZky/L3DUGbSOdG+Clo2pu5fIb8I4hgfTbqbq
         qUr1Q9H3nB8SvdeI75L5sBQydC4dcTBUAldWsZjxtI3gYl5rJIiUlW+p0+skQN4cg2KF
         j6Kp79VrUR6HqUiwSTxMNR1Ars3WN6Fxach4WuUIq5Fo8jGUDps1A+ufmRK6YCG6ouhI
         goMoBZA4w3FQcMTcKI03PT9PSY66ObY80ae0F3oobyUIObZ3VpriT+ThKIWAE6ZcdvwU
         1o7CPK5owuFuGH2hsFsbdNJZaw/VRPaF+xcdTzR9C2i1UbRHZXgLwIlSsKUF63r4Lfid
         WWoQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVu7DjNeEEzcLGq0uxXStGMiqGOCNzOhJsAw1E4ftetAUMthBvuqNUqykLaNqzDPQjOJlKcy6WbATCVoZHYoZTed7EmYL4jMEO1
X-Gm-Message-State: AOJu0YwYS7CBRdha3lIkCARtNVgTstSY9pG4QQIlxZYXAqnXN7OZvMI3
	uzzecY3ygaS7Eq/F1ZgdxCsa0F5tGAUIgMJZm74mednEBlcpbVe96hD4RH/dIpM=
X-Google-Smtp-Source: AGHT+IGU4PdZ1nwWB3Ha4WzRDyUHhR/Vys8dE+EZ4nM3XgWlhovqAZqqhRV/2qVi2um2IrWc3lfaxA==
X-Received: by 2002:a05:6870:c1ce:b0:25d:921:75d1 with SMTP id 586e51a60fabf-25e2bf10285mr6079642fac.52.1720269414837;
        Sat, 06 Jul 2024 05:36:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:8292:b0:259:f021:752d with SMTP id
 586e51a60fabf-25e27dd0563ls948921fac.0.-pod-prod-07-us; Sat, 06 Jul 2024
 05:36:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW/wrZFny81f7gn3fEJdFiCw5skMfpc3bGHlG/pStjHGq1lmP8PJ8AT8Ej0vEdGVqj5BGNpskGSxxf7i8S6QaoryauxVci7pCiXYR1dayLcsoTtl/U=
X-Received: by 2002:a05:6870:63a6:b0:25e:1659:4ce9 with SMTP id 586e51a60fabf-25e2b5a06admr5863597fac.0.1720269414010;
        Sat, 06 Jul 2024 05:36:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720269413; cv=none;
        d=google.com; s=arc-20160816;
        b=FtR+xZ1MZJKXjSZSeWHwT2cNLhvj40Sug8stNih9QNKsddcT9Y6pX0/2+MoEuiyX1/
         iVoHSh6tHJoRcxYxpFdTN57fvuCB7d1seYmo9WrBLWMCr9wgQEsdnNiqf2hRXUJQGL5m
         NBPgGWembZ7pUq9iuqNuolk0WZqNXagZz0teeqkodTuhw6KcBlLHTexXJkSw6cMBLTFV
         FFqrG5SknTAj+ApIlRsbk47eJd+7l5f+ERmmvwvvycnSJb6A36fwVQm9ESqt5gEusrBR
         iD92P0grlMLBaczDFvmqAPQKZGj4ldnCVMLv73qsa0GUwzJno4E9TXy0Rcie4LWpK5Xd
         eT2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9IzunsNdkPYTf9vL9J0yEczAyMzI1nwv8jSUdjwj2E0=;
        fh=G1xaMEjcq/VzXNko1kzCDqvxW8eozN2W81dz7VgrA2Y=;
        b=yuFu3RolLDmMLjroOevkSTj6e4cB6sNpS5uCpgskidwVDvYhSs+3raN9CWDDmRJi1K
         haRYvNhRW/XttCPGH4br1+4JCc39Oyo5rSCX2Cj7SJqwwZ7tVB0KleVcFCmOtPzI3HSF
         Na7vI/dMSehhASeVIX31GUfoG7D7/+vy8DY2mqWc3pSBGsoDYFULAdSw1BbewCGLGyrK
         cy/p470u2TskxZtLv/ApAgUaBVJzgGsewPdXKgdp5wJ++tqcqELXpciYYLA3k/ECNgMJ
         EhXXG9M4RM6kZKwv5A4n9LKrnBaYgnBJXUfuHjodALshHljgRE7OpsvIfppFRW87UNuB
         56Ng==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="E6mHXN/t";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 586e51a60fabf-25e47c58538si1455375fac.78.2024.07.06.05.36.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jul 2024 05:36:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A48D161B45;
	Sat,  6 Jul 2024 12:36:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E753CC2BD10;
	Sat,  6 Jul 2024 12:36:51 +0000 (UTC)
Date: Sat, 6 Jul 2024 14:36:44 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Aditya Garg <gargaditya08@live.com>
Cc: "oneukum@suse.com" <oneukum@suse.com>,
	"stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	Kerem Karabay <kekrby@gmail.com>,
	Orlando Chamberlain <orlandoch.dev@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH v3 1/2] USB: core: add 'shutdown' callback
 to usb_driver
Message-ID: <2024070612-squealer-wackiness-c885@gregkh>
References: <58227E2C-1886-40AD-8F80-7C618EF2D8F2@live.com>
 <7AAC1BF4-8B60-448D-A3C1-B7E80330BE42@live.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <7AAC1BF4-8B60-448D-A3C1-B7E80330BE42@live.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="E6mHXN/t";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sat, Jul 06, 2024 at 12:03:23PM +0000, Aditya Garg wrote:
> From: Kerem Karabay <kekrby@gmail.com>
> 
> Currently there is no standardized method for USB drivers to handle
> shutdown events. This patch simplifies running code on shutdown for USB
> devices by adding a shutdown callback to usb_driver.
> 
> Signed-off-by: Kerem Karabay <kekrby@gmail.com>

Where did Kerem do this work?  Any reason why they aren't submitting
these themselves?  Not that this is a problem, just trying to figure out
what went wrong with the development process here.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024070612-squealer-wackiness-c885%40gregkh.
