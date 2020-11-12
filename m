Return-Path: <usb-storage+bncBD6LRVPZ6YGRBH54WL6QKGQEK5HGWOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com [IPv6:2607:f8b0:4864:20::d48])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB1A2AFD76
	for <lists+usb-storage@lfdr.de>; Thu, 12 Nov 2020 03:29:53 +0100 (CET)
Received: by mail-io1-xd48.google.com with SMTP id i9sf2802640iom.23
        for <lists+usb-storage@lfdr.de>; Wed, 11 Nov 2020 18:29:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605148192; cv=pass;
        d=google.com; s=arc-20160816;
        b=z1NopleJtYjfLKByszyB2FgipHldhVSG6YRJaFGHwmja+uUBdu8l8XOegyWd3jDIWC
         5BlyGr+6aPVBr7WFJs0mdJ9OCHgp8UE5syPsS4KTecBgcsU99HwuBzPtbgaxpg/NXtkg
         7EgRKg5DzW+5+PYPDYTnh2Zod23HBnKfhHZoh96aoG8JXHDJnRKtuEjqmTLNXEKazyHO
         aCHlHDYDFYbJmezCTLeX/ZXi6TwtWUb/Q1LG8gEe5WmuTS40hkeSCJx80oCx4WZ8x0vE
         7ZDmnD7kLOkJ1sKRbkLCjzcWKJg71zlNt6v3lrlvPjCT0WmADrbW4BA+GmpTLZwgpB67
         q9gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hx/U8X2edOrEvIa0Mrc3Le5Kw1iSL/WvCGB3J5RH1Zk=;
        b=SQoQ3jK6AXja0mOlIEkBZBv2OEakSNkojLIdgYUs9ntcgej1lnp/NDkNoWSSwNWOBf
         ilGSc7TPs3ccfu3i4Y6DbKvbZ42Z2gWpBH1cXOwr/mabm9kzMJmL+oNy6eYl7bMdL+O4
         Um06/9PL0yTFzhIbp3X6fQyXUXfwVtA+pLTql5G3yDJtE+qt7z0KwH/FBLKmj+m8iebc
         teuaJy3icxlOufevK4bUgjThA/kvRsrr4aKEt3Vp6NJKS7zo/N3oQ0rPoibm7G0KnQnJ
         oXDKJEUY5f3+xymyoqC3liJRy9+isrDRK6ek7chTQbBKaj4jLTyCvcYA0xV66+2mP2Cj
         ZDFQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5faeb4f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hx/U8X2edOrEvIa0Mrc3Le5Kw1iSL/WvCGB3J5RH1Zk=;
        b=XotUAzhJeLcQpz+gVy/9gdlB0q01gr6zKHNh9jnjFXYIhlyD5h8dq9Hbsm+b1UhWqP
         3O7gyys2Vkq/qBO6ApZdwHvCiGf1U4wYy++dqOAg7xmFEvBKIl3vPHlD2OLD8ZStoMxE
         w4EmcHCK0O3uoKtD/UCWSelqMjirE3JLaUgeU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hx/U8X2edOrEvIa0Mrc3Le5Kw1iSL/WvCGB3J5RH1Zk=;
        b=qKqvlbZWPcW/3233ORaQo2j9h8x7dchMPfNGVSH9DnlJyddmTJGNZkgR5La7Xr1VzO
         tCTEXyXWuAHCxFVhPsJt4A9sOv72hYkvNt2zst1AyowmTavgVTfGYgU8gP3o6gKXPNz+
         sGSgnYbsjTop/dpI2fiHOic+bqBSJ/3rIH8TDdotvwdhdaIrQgwgcuXgL54GgS+bbysb
         vkYOvyilFM/PN9ttMT6sAjrozdcItJobYRoynAIgwDH/8Ik4jRpmfwKeUM+/o4gYMIYl
         5ZEQ7XjTMVNKBJuCfHB24hZYJajyKnM24ne+C1BAw8aG4xl18UlQ7iIUrBK8CW0ZOBIv
         isYg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532sUr7w474mr8XZFBmGhf4C6/Mr13zTLsv5Og3onY+ypFeXooCx
	4ocJJb26r8/8bOQYIY7qviiJQQ==
X-Google-Smtp-Source: ABdhPJwdmZnrt735KT1WafbtjFGZmzOQV6jwjy2eDSnWm/8SewFdyqMDM0B/KfDUvEGC6zssCgArxQ==
X-Received: by 2002:a92:d6cc:: with SMTP id z12mr20661613ilp.172.1605148191771;
        Wed, 11 Nov 2020 18:29:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:dd0b:: with SMTP id n11ls432362ilm.6.gmail; Wed, 11 Nov
 2020 18:29:51 -0800 (PST)
X-Received: by 2002:a92:d489:: with SMTP id p9mr17279454ilg.123.1605148191083;
        Wed, 11 Nov 2020 18:29:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605148191; cv=none;
        d=google.com; s=arc-20160816;
        b=zNEmzb420Hh1y9aGjHsq8rEwAO84lgEioznOvJ+vIG77E3E29onfjEEmNKKhjtp66U
         Bd+qOxA6qhZxdphEUi4TqUCFIytsDU9s5xQ3gCj/MaF9K8igVxlENlr2lUeDFYEUEW8s
         Nep3NlAXRthyk+qPdR3digYjtWGcv+aPlOoxPDC2kP6T4WYZPsqqUG5K3ynKYdOTf4sW
         s5/p2rz284wz5uoGiRtF8+c3PtME4/yCrStqtI9WBzPiYsjEB/WLU6JuMWg/kZ+qBbTN
         Wjqk+mM3E/XADATm4BcuqqP+5oKHt/U8KVEzU34t5RhtG/NS0ga8s0d9IJRBjZXWdYaJ
         naGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=zqoU3REa8LZExFOKG7NoyqW2Ic8O2msCZmbKJMVjMBA=;
        b=Q8eTWPGttjl3fLxHTV6LS0sqNo0UdWiMXXcX1Josnk8l/c/E0cYFZR0Eq/yg6GMRjs
         zfnR/tlWW3A+5D9aqjjorWU24mWA2hASBKgFx31PqcGS/GYBnG+awbmsxb7wXNdsKj3s
         SbHeLhj9sevT95zJSi+RpH21i3RbM1UinksdaSq5vP6LX0qizbQ3b74RSHPDcMGR6mpC
         mpLpp20Ea+I2RYdpCx6k1N1/FTNGXLNkiWCStFjfHYwdQOUI83nNAGw3ham74SKULvtD
         vxgkxVvCMr/BF35h8mZ13yCahuDsEEYRM3NDfegQx0mfuTGtRE9Jxw+KizrsjGmV3xDk
         5CPw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5faeb4f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id c14si2386533iod.17.2020.11.11.18.29.50
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 11 Nov 2020 18:29:51 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 256982 invoked by uid 1000); 11 Nov 2020 21:29:50 -0500
Date: Wed, 11 Nov 2020 21:29:50 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  clang-built-linux@googlegroups.com, Tom Rix <trix@redhat.com>,
  Nathan Chancellor <natechancellor@gmail.com>
Subject: [usb-storage] Re: Use of uninitialized data in special error case of
 usb storage transport
Message-ID: <20201112022950.GA256754@rowland.harvard.edu>
References: <alpine.DEB.2.21.2011112146110.13119@felia>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2011112146110.13119@felia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5faeb4f6@netrider.rowland.org
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

Yeah.  When a transfer error occurs, I believe the *act_len value is 
ignored by the higher layers.  But it won't hurt to set it to a valid 
number, just in case.

For the two early-return paths in usb_stor_bulk_transfer_sglist() the 
amount of data transferred is 0.  So if act_len isn't NULL, setting 
*act_len to 0 would be fine.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201112022950.GA256754%40rowland.harvard.edu.
