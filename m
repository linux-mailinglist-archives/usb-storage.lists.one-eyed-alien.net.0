Return-Path: <usb-storage+bncBCUJ7YGL3QFBBKON36UQMGQEBLZRKTI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4EC7D56D3
	for <lists+usb-storage@lfdr.de>; Tue, 24 Oct 2023 17:45:47 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-581ec87fbf9sf6039220eaf.1
        for <lists+usb-storage@lfdr.de>; Tue, 24 Oct 2023 08:45:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698162346; cv=pass;
        d=google.com; s=arc-20160816;
        b=MMPptJf+7Ztpr4Aq+BQA2YW3J4Lb2vcRJBcIwrTqR0LOvNcGWHkxMKJI929WwFp8ch
         gG4/X+ZWIvIvBArseIrg+9fVOvDvaMvpA4Jn6doEtYMvyASSmxPcvlO6BW/GZXkkv33C
         fa10maBkx0g1XRcr44S/FowL4l3fVYa/uq33wjV9pBRuG317Xj7bvM4FLvqNGO5wxdgf
         n1ZLR1nmdySHvxE5JEJBFwkdv3b7/PCSSEu6kxvIcJZVO6HNUfOa3sXRefMVfT/u+wlB
         lyImDSa7sQ3byqYn3oOVJuUCs5ULjoSB7UBUbhh+BFQ2PW4Pd3yxIHR+GHujhlFpPEmH
         1cRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VIu2qNfcNS0zu/E7htV2pUpX4BCzGhKt2Z/jCUtHPuw=;
        fh=vKiCxiLdrAbrgKNAGM5vEdqbxtXvr2eAEBvG7fBtjBc=;
        b=vQ1Z9uPr8gWCAmY7sozbGgptlvC9DQhafcFrnU0ifjH1NVGmAWzJ8Ovk8OvdC1NjR6
         jf0sX/nz6pE1/++b5gIlfTFHkPgk366snCxQEQVFyrEA/JVUP2yXme9wrAfOz12pWaCQ
         aYMQMbO2tmp2o0NcqtE0gB1p4RYfkjtjHcO95+JXtNmJdZFdOfKAp8cWpVrkHj8+wqvR
         DQNZhh4NxKNbV01AGWSNoWgHjzJ+YGohOmKbAwVhEIiBItvyshdJ+R7xrpZpf117sP2A
         y3DTw7EmyLg/2nbSqAzZsACyLYkDZV6JlrcYuwQhYYVXjUz4+vPfprJTUWfxKR/yuJaV
         pRCg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=zc+9Xqnz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698162346; x=1698767146; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VIu2qNfcNS0zu/E7htV2pUpX4BCzGhKt2Z/jCUtHPuw=;
        b=fWwWAPsI9tz4rLv8rk1Yc0BwJ8wb8F/HQ8SVy0dphjkXdBzKVC5tkJv4KTnQg39R1T
         kXXK81/qkPM0I6buwflI6P6rrMlinyqSPLrUCVN3hs3t4OieZSGBwMAi4w+cUo5aoH9v
         Gjl+AnVmqzg5eone4YLa9SSp0f6sOn8tZ60zc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698162346; x=1698767146;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VIu2qNfcNS0zu/E7htV2pUpX4BCzGhKt2Z/jCUtHPuw=;
        b=rXy7DHe0Cbb7vrmzEUpd5rhu+kNAhu6L4dQlM59y4t+7NwEWCo/LqGFWHXtw+8h4RI
         IbjivT2epAVOsAipIwuuuxjiDLyfSpDAGs55YLBhE/YAVDpB2iiXCMHMK5DB5NbIeEhu
         pX+aRFFIVfUHgkyJRPsKl7Jb9kV0gBEUvDPKCQi52g5tNiFmlNfj8Cy+6dPbAiEYpQGQ
         yG/p0iNu8R7MaEH8pPwpz/0yOBxiX6qdJdFo1FDsSYBab2IG4rk16T+2IT1aghLN+J2V
         ESSVOEGeNCJ1nOP+j6piril74Z2vAu4C4HALruVKOwgkW4CN8zA+RUioryMczeyhKQpo
         f21g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YzDCVu+qbfXa07jCY4If1tqsH9yHzftPSuzy6GWDXZOLZNJYkTA
	Ct0jlSkbGRQPhRntQNS2xiT3CA==
X-Google-Smtp-Source: AGHT+IGeznUB57eXTbVLTIFVvH1jM1WQ86GVqEmwcx6qH+8ky2e8kZRH5A6QWR1XGYfKpQ5BOuWT4Q==
X-Received: by 2002:a4a:cb91:0:b0:581:ea79:7052 with SMTP id y17-20020a4acb91000000b00581ea797052mr6693112ooq.2.1698162346116;
        Tue, 24 Oct 2023 08:45:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:58d2:0:b0:581:e260:993a with SMTP id f201-20020a4a58d2000000b00581e260993als4206428oob.1.-pod-prod-00-us;
 Tue, 24 Oct 2023 08:45:44 -0700 (PDT)
X-Received: by 2002:a05:6830:4104:b0:6b7:564d:f368 with SMTP id w4-20020a056830410400b006b7564df368mr8031880ott.5.1698162344286;
        Tue, 24 Oct 2023 08:45:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698162344; cv=none;
        d=google.com; s=arc-20160816;
        b=jOIDvtp9fffqvnDu25E3CRGXiZMJSMtvCRQUk7OJMf76V1UcMnsu6rmfpLqW49lt8/
         f0re9+aP5o9JiHyu5RtOwRTRQGBP+YcXWj1OnmBiD0p3IfWJB3EhfAgxBhXWDLoyIvat
         2rtBu7P+LAfw546xv/4p1PbQdwpZRWQtftvpfm5cp1qVK3prOeSezQ1nRYLcKx4w6zlT
         FJY3ftyRfh+HojStGDGJ7gL+M/eLp14/exbh8lDMmOsysrgQXWshja32lEbQohcXc7D8
         3Pm755eecGoA+n5APgxHHojIiVv6ZA+6AWrTeSxgV7+LL7gUXOEYnd7CJpSslUwC5BjL
         SUxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=erfMZa6ib2+SNdfbRAf2UspGg4EtKoLBzahsSjqpUJg=;
        fh=vKiCxiLdrAbrgKNAGM5vEdqbxtXvr2eAEBvG7fBtjBc=;
        b=rcetcJL4GkKS/Tl8LPe84ocwKgplUTWM3CEFesDQ9UbShQ4JG2gz9LDMrpk91+UJ7z
         x3YdPRc8YDICYIqifhQMf/PsyZbHPRaf6NsQ8YpqlryM2sf2aebQW/YKyEJfa1J+EMgG
         X5fl4sXqUt9sZB81R/5Ik+Qo/zqSuCyAKZxlSrw+C//ujvmi/9Ib/diNYn90eUODO/2p
         TWwERSEg1/7iAdJY6SQayRZ+wZVlrzJwjijcHWGffGgoPUCuo4sdvJ942sNG2HaDO+i0
         xvXOkrMbizB3dYSdVdnC5gXoAz2fS9bRHEqZMlhlvip/eQigDI+YRySZOEO3PtYMA9BG
         YU1Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=zc+9Xqnz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id h8-20020a056830164800b006b9eee87ae9si3162124otr.275.2023.10.24.08.45.44
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 08:45:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0027862B94;
	Tue, 24 Oct 2023 15:45:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4621DC433C8;
	Tue, 24 Oct 2023 15:45:43 +0000 (UTC)
Date: Tue, 24 Oct 2023 17:45:40 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: "Li, Meng" <Meng.Li@windriver.com>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb: storage: add shutdown function for usb
 storage driver
Message-ID: <2023102428-zit-quickness-9b73@gregkh>
References: <20231023054111.2744872-1-Meng.Li@windriver.com>
 <33bd0779-bfe7-4c87-8fe6-ea8455df3b6b@rowland.harvard.edu>
 <PH0PR11MB51918DD50651DB6BE937BEA3F1DFA@PH0PR11MB5191.namprd11.prod.outlook.com>
 <3fe5b43c-a5aa-4c6a-8614-03a4d9dd53e2@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <3fe5b43c-a5aa-4c6a-8614-03a4d9dd53e2@rowland.harvard.edu>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=zc+9Xqnz;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Tue, Oct 24, 2023 at 11:35:19AM -0400, Alan Stern wrote:
> On Tue, Oct 24, 2023 at 03:43:56AM +0000, Li, Meng wrote:
> > 
> > 
> > > -----Original Message-----
> > > From: Alan Stern <stern@rowland.harvard.edu>
> 
> > > On Mon, Oct 23, 2023 at 01:41:11PM +0800, Meng Li wrote:
> > > > On ls1043/ls1046 rdb platform, if a PCIe-USB host controller is
> > > > installed, and an USB disk is also installed on the PCIe card, when
> > > > executing "reboot -f" to reset the board, there will be below error reported:
> > > > usb 2-2: device not accepting address 2, error -108
> 
> > > > This issue is introduced by linux-yocto commit 837547b64a34("driver: net:
> > > > dpaa: release resource when executing kexec") that cause to spend more
> > > > time on shutdown operation. So, the 2 platforms with DPAA are not
> > > > reset immediately after executing force reboot command. Moreover, the
> > > > usb-storage thread is still in active status, there is still control
> > > > data transferred between USB disk and PCIe host controller. But now
> > > > the shutdown callback of usb pci driver had been invoked to stop the
> > > > PCIe host controller completely. In this situation, the data transferring failed
> > > and report error.
> > > 
> > > That's _supposed_ to happen.  By design, the "reboot -f" command is meant
> > > to carry out an immediate reboot, without using the init system, unmounting
> > > filesystems, or doing other cleanup operations.
> > > 
> > 
> > As my above said, I understand what you mean. I also thought over what you said.
> > I am not sure, but I still sent patch to upstream community, and want to get some suggest from more authoritative maintainer.
> > 
> > > If you want a clean reboot with no errors, don't use the "-f" option.
> > > 
> > 
> > There is also error report even if I use command "reboot"
> 
> Okay, that's a different matter.  In fact, I don't know what is supposed 
> to happen during a clean reboot.

Define "clean" :)

reboot is a system thing that happens before the reboot syscall happens.
So which are we talking nabout here?

> Greg, do you know?  Should we take the time to disconnect all the USB 
> devices during a system shutdown?

In the past we have not.  And if we switch to do so, we might get some
complaints as we would now delaying the shutdown process to be longer
than before.

> What happens with non-USB disk drives?  Or other removable devices?

It would have to come from "above" in the device tree, so does the PCI
or platform bus say that they should be shut down and their child
devices?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2023102428-zit-quickness-9b73%40gregkh.
