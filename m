Return-Path: <usb-storage+bncBCUJ7YGL3QFBBXF7VGVQMGQE3PO5ITA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F364801672
	for <lists+usb-storage@lfdr.de>; Fri,  1 Dec 2023 23:36:14 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-587abe0ab5csf3129875eaf.3
        for <lists+usb-storage@lfdr.de>; Fri, 01 Dec 2023 14:36:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701470173; cv=pass;
        d=google.com; s=arc-20160816;
        b=L/alGFhmH1IVYWX6EGk7Db1OZbOMlP3VYTD2PIb0NTgxSo7zeYnVHfVaGJI2jIl6+W
         yT9eYHS9/WrYIc+lHwTG9r5j5fjKFJpDcdwGv0SUCc1Y8UX9nqePkbYcanirJrcslTC0
         uDfewu8BQXJZMZp++w3rkJKl2VJuc6kkx0J9SZ5cKWoNPIXPtOklicek1AcZ0Bwqa10n
         209N4hTqZ0PjDeKmE7Hess46ls0zEaRpCIS83F7EjwoE9Wg9edA7rn3EKtpOydaf56CS
         qculTV6yqadSwzPQ0kTESSml9LuZ4WOl0hx6C3+X4ikB9o2XxbpI/Dl0crwGEpncGvLu
         pKuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1Po0em5UjgVptxG2WH5gNHQlsIvrWTi2hyxBUo7GcW8=;
        fh=UPrC8ClQED0XDdkHP06KWlgnieDC2Tiuw8GlKHKavKo=;
        b=VSQa6n6cMtW2JyftQRyZiFRY+oG9PX+CpcMSgWfpnntfDskzUkZVL6cuoxFO09g5yc
         HxbpGHtw4vPzUrtzVVmpUr55siaypKdkdg4+rLfPjtDK8xPIqOVPD+lvzOMUQbTw2heS
         CkSZsn3TF0mU+1n7RGvbNIzEf443W5+s6OxMHsk9pNRsQtJo+9aEbSXpyLAQWoK81i0p
         EdFldNGXFh5s5BDX4h5mDK+dsJenK+2CKCP1XxiaGQtAeAzZ8GzPdS5mP2c36UdYDJAc
         O7KnEVKS3X1rEq+Nn/HMjF4jTzbxl3sw1hPPjiuzhG8Q+pBMWVOdDjYDd+670LxmbXhc
         SUow==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=e8SRa3kL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1701470173; x=1702074973; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Po0em5UjgVptxG2WH5gNHQlsIvrWTi2hyxBUo7GcW8=;
        b=dCUwcRA5JTlpgpF3iNFRn3YCCfoNNzO9V+O6tNyFaUHcOhR5rg1tj/JhD1kve/lDSX
         NoWJyGFETHoMEK4AfkbiJv0//s8+HFQkVP/+gD4BGTK0V++dvXJhiLMfwg+6xM664wde
         cMUCVptlcy335foRFmP7kZHDNqWfp7JmceZig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701470173; x=1702074973;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Po0em5UjgVptxG2WH5gNHQlsIvrWTi2hyxBUo7GcW8=;
        b=KJzquYV7AKf2FiSDNwuSW1HLS8u/nbVTYaH0bWATHSezqzPDU6A+il1DASOI0lXOC4
         Pa11+2wwhA5M2FEWQdcrvHUyNeMedV0Y5RaB9Uu5kjIqIl9k9HMF/sG77MRWRp1j56gu
         xdTJIcEvcx71y0BFwV+txjLXcCOUAYCjIH3Bdb47+gFYVwWym4Wya9pPzCd20iEB69EO
         +beizrncCPIEERtXXubys1xoxzibgFb4ZnaWT3PTfTB1YI56UweKyR9aCX9o8HLSyr+N
         NLRVZ47UI37KuzM465FDTRC4A5R2Y+gnZS1kihf1gMf7OX11WYBU750LYztiSsxv/EMy
         S8Wg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yzu8yJIX21fC504b9q4WfH0yoAwlWYpBvV7pqhTq/GYEqCIriK2
	zw/pV7NMc4h+xLvGQht+6ICxJg==
X-Google-Smtp-Source: AGHT+IHZ+j31pKLl5wDxkx//3e36HMxW+g0Jaio7OtXBmZSe9B5ZNka8QjbH7EUdrZXitqDopwC06w==
X-Received: by 2002:a05:6820:2c98:b0:58e:1c48:1ede with SMTP id dx24-20020a0568202c9800b0058e1c481edemr185894oob.16.1701470172706;
        Fri, 01 Dec 2023 14:36:12 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:1c92:b0:58d:5ec9:ea68 with SMTP id
 ct18-20020a0568201c9200b0058d5ec9ea68ls915857oob.1.-pod-prod-07-us; Fri, 01
 Dec 2023 14:36:12 -0800 (PST)
X-Received: by 2002:a9d:7419:0:b0:6d8:74e2:a3cf with SMTP id n25-20020a9d7419000000b006d874e2a3cfmr248725otk.43.1701470171896;
        Fri, 01 Dec 2023 14:36:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701470171; cv=none;
        d=google.com; s=arc-20160816;
        b=njth/5S5RCeBBkOKsoh71OSHgicLwU7qpGZ3hYWIe9LD+bHr3hT2RGizZuFWO0n14V
         x5zhbyrq9Pz2zk84Rd2/1RlHTVs6n7l0nPJwRyRmQtXlVCIYHcjP5PqTg+DqiG5cLYTy
         ZcTT+XtmQldjtpiPRXBDUVduwz/ipdZ5nlmziglQ21bEeyQmWzNObRXidWFw1tp7N5iL
         RSmNNUN3xSkv2KPo7Y9hQrVq9ucgGiXI32AeEHXmEcqY0TYtUJdO6bMDgkI4ctKbNmp4
         Pms7Unoz/ClO3TKprOmw01e8+y1Plzf4JzhEHB01afbPKJUZ7RKAHbnBbeggXxjLu+sD
         5IVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CE/Zcj+qu3DHTTdNukR9D+fTyvqFdZeGuAcXWtu/ymU=;
        fh=UPrC8ClQED0XDdkHP06KWlgnieDC2Tiuw8GlKHKavKo=;
        b=Au6+ipoQjZmzuv3WwpvluY7BWooEpOR+kmtgIs9dEf/m8pXT3i7qo0Vx2uOO/GFGxj
         /4D36ILWqjxc6meVYl44bvVaJ25N41EnfT7LGsZ6rkc2wOP3OWQCDdpeIKJQrbV4BIxd
         ML0PuMcLJxzkVDwPVpmqLMSNXWWNHK0xxrEPK23vnndnarhw3RnfAd549PCGV7jdkaV1
         iPs26e2rANCZAscNx0rrp/97TIo0O5+YJNEK0dhh+iLHF8t8j7t9N8i3ncVH/k3+z6uP
         dCmgF2YOa0KdmTjZQglN5HLjVUEDvJXmenIlP7KdNCR/D4PEvl7PrLLK6MPFgRpqQtWZ
         GHyA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=e8SRa3kL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id d1-20020a9d51c1000000b006d7f7b930d1si1606096oth.163.2023.12.01.14.36.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 14:36:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9F51362280;
	Fri,  1 Dec 2023 22:36:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC895C433C7;
	Fri,  1 Dec 2023 22:36:10 +0000 (UTC)
Date: Fri, 1 Dec 2023 22:36:07 +0000
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sergei Shtylyov <sergei.shtylyov@gmail.com>
Cc: Karina Yankevich <k.yankevich@omp.ru>,
	Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	lvc-project@linuxtesting.org
Subject: [usb-storage] Re: [PATCH v2] usb: storage: sddr55: clean up variable type
Message-ID: <2023120110-uncharted-rift-98f9@gregkh>
References: <53bc0584-51eb-8bb7-de48-ca07fccafc19@gmail.com>
 <20230227112541.14849-1-k.yankevich@omp.ru>
 <Y/yaB2A8qwgRkqVO@kroah.com>
 <a1296b9a-c27e-3b35-e256-32350fb2a83e@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a1296b9a-c27e-3b35-e256-32350fb2a83e@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=e8SRa3kL;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
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

On Fri, Dec 01, 2023 at 07:16:56PM +0300, Sergei Shtylyov wrote:
> Hello!
> 
>    Sorry for the really long delay! Your reply scared off Karina
> (it was her 1st kernel patch), so I'm trying to pick this patch up
> where it was left back in February...

Note, any submitter should be able to answer questions about their
change, as remember, if I take it I am now responsible for it.  If they
do not want to respond that means they do not want to be responsible for
it, which of course means we can't accept it :(

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2023120110-uncharted-rift-98f9%40gregkh.
