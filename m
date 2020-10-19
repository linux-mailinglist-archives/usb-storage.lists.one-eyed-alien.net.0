Return-Path: <usb-storage+bncBCUO3AHUWUIRBTNXXD6AKGQEBNYGPZA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com [IPv6:2607:f8b0:4864:20::d48])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2E42931AF
	for <lists+usb-storage@lfdr.de>; Tue, 20 Oct 2020 01:05:50 +0200 (CEST)
Received: by mail-io1-xd48.google.com with SMTP id m23sf1338970ioj.20
        for <lists+usb-storage@lfdr.de>; Mon, 19 Oct 2020 16:05:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603148749; cv=pass;
        d=google.com; s=arc-20160816;
        b=ewblkm1QwSQiBKapziqIFT9dG/bUGbn6wbLwFmi18aHdt9hqifYRZ+m7YwGX9CMjem
         dln8kgfrzszYs97Y6ZHB+BkU4D+VoS/ApWWU4Hb6SrhPj2Lq5oTVJFhjI4L43gCg/RUA
         hvYTNGA/Ig75R9BRjiZKUTmB/koE5hhtbEc47GfKxFNAfxc4Xh2g9si6xvA1iyuzrSGE
         VCyrTETolHvc8924s3DJ8ZrTLmnq/udTUDlsB78yEVg/ebNFGUidrM65rSiq94v2kvN9
         u4laOpO46yn2pvZLpd+6rDTwLSKb5pK3IOO8NiG/oi6QbdeAXh6tWc1WVzHe+tyMIrJ7
         OUYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8H4zdhK8AgofLoDa6H+zv3cDJJXeuEVbU7s92ubdtYg=;
        b=up2JjKIUvinFL+19xeXbMVgaLbcfhHvKSGqbmtSsIMfX9WxNku6wBLVpcJYJNUBwtL
         aWDROpyvgmP371Y5hTBhgn+rGvV3GU/c8tpVA6mHArErzWMHzQfy9YW9SjCdKc4hmT05
         j8hHBhOLQnAvVFTil/ts53EEcEvrEZ8oFDLIuVqLuaYS4B6XkRga6JCc0OQ0tLQIXq4o
         6VByQoT6hS86hEXM7MtiDpL13mg25rzJBdZ7H7zZXqO6C+Fxxz7XJvqcvT5fptJ4y9vI
         jGo/zGyW7DUNLRF+ydaJTZ1PwydF4d2/jYh+xJD8g6PzBUC7OuZJm+hdjDeHTWXPQdmJ
         e/AQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=R0THCPfe;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 209.85.220.65 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8H4zdhK8AgofLoDa6H+zv3cDJJXeuEVbU7s92ubdtYg=;
        b=AxTIkWvYCx8iRXEiqPM3KhR42E0z27TWVSdJpRrWg0aDD9knT+oGks9jeimujL8kt/
         7nAxUi42sWfWyMsYK/EhmiS5xNkkCmXCZSkz5nE5gPDhW60quCrWKcr+kwytYlNV4MwH
         NZA5N+amHg/+Ng07/lhgkPmGYya+dMmT6xP20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8H4zdhK8AgofLoDa6H+zv3cDJJXeuEVbU7s92ubdtYg=;
        b=uYJgandMVkY9gq8ng5SZ+c2f77zWYIZBueII8GUIwEGutA7MV+3xaqFKNDQB67262b
         3t3ZBhPsd69zk6RKj211HlyE7s/Ek7Njhbr8XsDqpdSqf9UBYQD5XM68p/Rg1zDPbsbr
         EO37lDH5M3w5QZvrnsRJPSqURId9yA2h5k+tFaaU7R/xOgX8Dx4Gxm9IP+lqLCXvH9KL
         Q6j0qBy93TAucL+j3CIgiCi4y9oRWcm4fpcdle72GQamyS3EYp7bi29xqosLcrZb1aAE
         EVa5A0yQ0BBYnOTadDnXJ5Tmisd1g00RHDTcspDMV0x9dFl2SjBrnmhPDrNNZzQxMfti
         LK9Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530SdYR4LeWYEOg+AqZP13B0UnRlgaSURWnwStBfb3OaB0pSYcl4
	w7DCRqBxNpYPZixrtQYnpQhB1A==
X-Google-Smtp-Source: ABdhPJwv7xrc1O4glbTW6QZ/ou7qWKbeFeZTy2vr8dwdI8os2Sc8zZh+8t9JGmhESMuhjv8Ad4MURw==
X-Received: by 2002:a92:ce45:: with SMTP id a5mr1958300ilr.308.1603148749459;
        Mon, 19 Oct 2020 16:05:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:8154:: with SMTP id f20ls216140ioo.11.gmail; Mon, 19 Oct
 2020 16:05:49 -0700 (PDT)
X-Received: by 2002:a6b:5c06:: with SMTP id z6mr49638ioh.49.1603148748931;
        Mon, 19 Oct 2020 16:05:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603148748; cv=none;
        d=google.com; s=arc-20160816;
        b=UeTwrY9pNngpUU5D9syaU8gfYGEu2WmYjWDzfsuLF3q2P/f19OW2mfQxgy3nonEdDr
         5ZpDCHS8R0C4mk5gj3qMlMK1JbKE07byqxqwcOcZRF4meR+PH+R39mrdXa03J2iaNFPM
         gJAvSbK640IlOLMKQhgykiQ1+dkeY4B4nBHSMkQDsK9YicTALeb11wZ0AghcG1ovspcQ
         Hk4Y4Cqdpp6hGvVrrbEonNaLF/vVv1n4GhKg395QZqwHQlW8g1a2FDOJZaf6gonXfKPH
         Vk5FT8OptALNir0VFxtk2fZT5p7Y7W/ItC9EBRdkwtkHWwwotxV7jJzO9zKVcEjqTBsW
         6MFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KZcwJitFojA7RhzeD/UU8gbzehCBdvf6g5ia0ZYCrq4=;
        b=ChN/k2fjGFY0pIFzWsbYp2tWjRes+hVb8O/uEbyIARL5VhFqNaMcYefovJEbGf4L8Q
         mXegZk6TDxtwe7C3sIn2uBJAZyrcQSMXiVQoIzpErP8vJzRUg8tmZWn21DQ6KTs76F8h
         ei1hu69T/46/e4/f66mzP1DfMa7aJ1KKIhf0wtweOil9fqPRJIbDKCbB41cX9r8f6cBl
         u5QtJQMFfuJNcfcUqcRHi/tU+bJ9w/veS4y7bHnDSKY0FbAK6LuL2kgZjRuogCQCgDfR
         R0gZnjt34C45XgD6H4nV2WAf7U0yFgrBvLvX/A5wy8iQtgJ/SlmMjGkazgwHSiHFuova
         RY8w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=R0THCPfe;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 209.85.220.65 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id s21sor1128485ioe.3.2020.10.19.16.05.48
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 19 Oct 2020 16:05:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a6b:5019:: with SMTP id e25mr44377iob.123.1603148748578;
        Mon, 19 Oct 2020 16:05:48 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net. [156.34.48.30])
        by smtp.gmail.com with ESMTPSA id u8sm7938ilm.36.2020.10.19.16.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 16:05:47 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94)
	(envelope-from <jgg@ziepe.ca>)
	id 1kUeDq-002hRf-LL; Mon, 19 Oct 2020 20:05:46 -0300
Date: Mon, 19 Oct 2020 20:05:46 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Tom Rix <trix@redhat.com>, LKML <linux-kernel@vger.kernel.org>,
	linux-edac@vger.kernel.org, linux-acpi@vger.kernel.org,
	linux-pm@vger.kernel.org, xen-devel@lists.xenproject.org,
	linux-block@vger.kernel.org,
	openipmi-developer@lists.sourceforge.net,
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-power@fi.rohmeurope.com, linux-gpio@vger.kernel.org,
	amd-gfx list <amd-gfx@lists.freedesktop.org>,
	dri-devel <dri-devel@lists.freedesktop.org>,
	nouveau@lists.freedesktop.org,
	virtualization@lists.linux-foundation.org,
	spice-devel@lists.freedesktop.org, linux-iio@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	industrypack-devel@lists.sourceforge.net,
	linux-media@vger.kernel.org, MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org, linux-mtd@lists.infradead.org,
	linux-can@vger.kernel.org,
	Network Development <netdev@vger.kernel.org>,
	intel-wired-lan@lists.osuosl.org, ath10k@lists.infradead.org,
	linux-wireless <linux-wireless@vger.kernel.org>,
	linux-stm32@st-md-mailman.stormreply.com, linux-nfc@lists.01.org,
	linux-nvdimm <linux-nvdimm@lists.01.org>, linux-pci@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, patches@opensource.cirrus.com,
	storagedev@microchip.com, devel@driverdev.osuosl.org,
	linux-serial@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-watchdog@vger.kernel.org, ocfs2-devel@oss.oracle.com,
	bpf <bpf@vger.kernel.org>, linux-integrity@vger.kernel.org,
	linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
	alsa-devel@alsa-project.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	George Burgess <gbiv@google.com>
Subject: [usb-storage] Re: [RFC] treewide: cleanup unreachable breaks
Message-ID: <20201019230546.GH36674@ziepe.ca>
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018054332.GB593954@kroah.com>
 <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=R0THCPfe;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 209.85.220.65 as permitted
 sender) smtp.mailfrom=jgg@ziepe.ca
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

On Mon, Oct 19, 2020 at 12:42:15PM -0700, Nick Desaulniers wrote:
> On Sat, Oct 17, 2020 at 10:43 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > > From: Tom Rix <trix@redhat.com>
> > >
> > > This is a upcoming change to clean up a new warning treewide.
> > > I am wondering if the change could be one mega patch (see below) or
> > > normal patch per file about 100 patches or somewhere half way by collecting
> > > early acks.
> >
> > Please break it up into one-patch-per-subsystem, like normal, and get it
> > merged that way.
> >
> > Sending us a patch, without even a diffstat to review, isn't going to
> > get you very far...
> 
> Tom,
> If you're able to automate this cleanup, I suggest checking in a
> script that can be run on a directory.  Then for each subsystem you
> can say in your commit "I ran scripts/fix_whatever.py on this subdir."
>  Then others can help you drive the tree wide cleanup.  Then we can
> enable -Wunreachable-code-break either by default, or W=2 right now
> might be a good idea.

I remember using clang-modernize in the past to fix issues very
similar to this, if clang machinery can generate the warning, can't
something like clang-tidy directly generate the patch?

You can send me a patch for drivers/infiniband/* as well

Thanks,
Jason

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201019230546.GH36674%40ziepe.ca.
