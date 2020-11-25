Return-Path: <usb-storage+bncBCF5XGNWYQBRBK4Q7P6QKGQEXCQJJ4A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7B62C4986
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 22:10:05 +0100 (CET)
Received: by mail-pf1-x448.google.com with SMTP id q199sf2448360pfc.21
        for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 13:10:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606338604; cv=pass;
        d=google.com; s=arc-20160816;
        b=xl77PdCvAt5x2q4l8MKMrcnK/csEds2lfmzyEBr9zoV5gLt9b9vV1i4zoh4UNNt/XM
         DNwomL7rkM0M/60nPOMctYlifi/yOC9S0euFi39/8uX8gIUbenLwCkyUv0miv8YVASf5
         ApUn5V8Y0rmIwisCouxn7PUkz9ZIUv1EQ+Hzf3yexWScJka+1WQOLNxtKZOlukNRnux+
         CfSGXxCukzq834rbB0qzv5a3hSYDQZvN2+NLLDjnyoUAMu3MzhFWIs6CUAhMOtVz6nHR
         pL2S67daHizC7a+SqfONawlVS/P18gZe7OFgS/iJgTDX241o5GTYG8JxgATxaZ1d9NEs
         rCSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=e0K7IqtvQZYbLyRs1Fkro4khfBCEbLscLKu7mxK2tms=;
        b=eXqHQu+zHR3YZyG2f1j99kSm4A8AR/qpfVQJUhwNkZeUfK7SJ+JYvE5tYMo+U+RmlZ
         fmwnslWkEMMtX4k8zO3Z9BUWi08dqn50ynHs9ptAc8iHKUeyUCCZKD1UJhRjx/xejKBi
         ZTe/hG1IJErX9Z88cPRJfkxQU/bgvE+49EWbCqlTahauXN9fcn24t25xxOqzbMuVVN8e
         nnHeWexznTiKlb31qgIVJl8l0KIdPi2qScc13x9O4+vnFFFzpw6hnVlrBOVt3EMw1GKx
         Atusg4ceKMxaqAD/GhOD/U1OvCF9B02fpjrjTqjTTy7Bsex8w25OSb8YHrK00CO8EsTo
         Q5lQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="AWR/7M4m";
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e0K7IqtvQZYbLyRs1Fkro4khfBCEbLscLKu7mxK2tms=;
        b=EKqOra9EcKtK+T6jrvhHZVDvf0qm4mz9XH7Oj5to6OzR/WNz7jQYOBBZaSNn9dogix
         lvGkf8cE+ZxXqefwpgbpqSlelegVdHyPEHqD1rFRNQ524JQxzmwbI5QhUovFUum3lmMN
         K10qE6RXPTn8LTXX/9MymO84H/ymrx5c8U2Nw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e0K7IqtvQZYbLyRs1Fkro4khfBCEbLscLKu7mxK2tms=;
        b=SD/HOWTDpeLCd/mWTT3nawHEDC8p3zrpdJ0hsNBr4+w6AI4Qqf3IbgnUtBLa2xXtU4
         gmoM57bd2UPh7Py8Y9BIzoHM3PIVI6G5sbON0VHXeJquoN1CkPM32NYCFjAhyqm9hk/H
         D5QblZs9CD7roHhRvCWK/3QCz61f1zQNseJz/HnAI4r56sTNeXRK6FpaT2op8b6b8Iyk
         dUQGNhouNmek+7loCoQJBDsJTCObTS0PSHmPnmKfJTiXhQVqc3VDfoXQZd4mDGKdpHMr
         lXJqdKoZx6jAKB90x/AY1vaBp1bvugJ/CsQ5VcOHAx08TAOdidawyroTrXRHdyC7AaSy
         G9Xg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532LO3+0MNhVj17FDuAjBDTauqC2/23F5r1UPItItmzztXpEUOv3
	nM0U7mYT+Z3MNCdGx82V20zJ5w==
X-Google-Smtp-Source: ABdhPJzbCYkXmttkIg7ZXaLyjxmEK/dYf8rAm8IrNpLkzUVp0vJEp+18b5C7EqZBK0jfLJ2un+LCyQ==
X-Received: by 2002:a17:90a:5d8c:: with SMTP id t12mr6588348pji.156.1606338603950;
        Wed, 25 Nov 2020 13:10:03 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:5909:: with SMTP id f9ls17897pgu.10.gmail; Wed, 25 Nov
 2020 13:10:03 -0800 (PST)
X-Received: by 2002:a63:cc05:: with SMTP id x5mr4513474pgf.85.1606338603226;
        Wed, 25 Nov 2020 13:10:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606338603; cv=none;
        d=google.com; s=arc-20160816;
        b=gfcvSSeEQ22dkIevCcdPBYm9eAqmDX0mCVqPUQMcG58TwPpITpSeqsYz+4IelnDcmp
         F1/xYMK3Af1uxJMA105LaSnP4TnRvkq3/bzRohlKYk/RKpSiJHUNzn9sV39PAZcEC5Gh
         wG/1JP8Vh4lLd8zpF3LRbfHHQ4mR11OwsbWdVMZag8KWCD5FeOBYN5KvG4skbGcoQO+Q
         d4+Tgs/rr9mN1ueGsLAH8mfIEgTcouTRV0UCU3poRO9D31AhmqiVg/1PNT/gmWNmHIC2
         zJsw2Zg+vOkmpCzXAL1MRtqJMuUEG9vWgzMYXfIJpGmMHO/R6nIbV1GSc6xPf6o4RaVD
         4iug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5kDOOuMOjwqEdI4fOY8lF/zJwxoesF7EbkKd66qXZt4=;
        b=QhVPucMsNh/Xi0fxq5qpMMyN2TUy1l4NIteXHozEWrD3H3bGNvDpO1iEKozsIO6fhg
         Z/1R+nyBC0F4VApYtJ1WwtKq6MF5LSkMX9ogBET7lwk1xuMOwkkPGpEv/hdD61MOLOJA
         zQlwu3mbJD5pDE//RxGCKQHRRF0Zk52izgmZLfue8IsshPIQ7OCBJOwCBeOpnJclW8ZP
         nTQ2K0JjptHe30LmMfa5n98YPfUUDy4fPbBli7voAanW9d2NS8o14bklmVuBki6Nm3cs
         Nc13BMmB950PMNbdkIjDvpn96qqtXmNpx2Gsj2BXs0mT2XniiKY9BRJ1Nf349286ssdE
         7pUg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="AWR/7M4m";
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id n10sor2219703pjt.33.2020.11.25.13.10.03
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 25 Nov 2020 13:10:03 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90b:3505:: with SMTP id ls5mr6437623pjb.55.1606338602947;
        Wed, 25 Nov 2020 13:10:02 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z68sm2599034pgb.37.2020.11.25.13.10.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2020 13:10:01 -0800 (PST)
Date: Wed, 25 Nov 2020 13:10:00 -0800
From: Kees Cook <keescook@chromium.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Joe Perches <joe@perches.com>, Jakub Kicinski <kuba@kernel.org>,
	alsa-devel@alsa-project.org,
	linux-atm-general@lists.sourceforge.net,
	reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-ide@vger.kernel.org, dm-devel@redhat.com,
	keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
	GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
	samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
	linux1394-devel@lists.sourceforge.net,
	linux-afs@lists.infradead.org, usb-storage@lists.one-eyed-alien.net,
	drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
	linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
	oss-drivers@netronome.com, bridge@lists.linux-foundation.org,
	linux-security-module@vger.kernel.org,
	amd-gfx@lists.freedesktop.org,
	linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
	linux-acpi@vger.kernel.org, coreteam@netfilter.org,
	intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
	Miguel Ojeda <ojeda@kernel.org>,
	tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
	linux-media@vger.kernel.org, linux-watchdog@vger.kernel.org,
	selinux@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org, linux-geode@lists.infradead.org,
	linux-can@vger.kernel.org, linux-block@vger.kernel.org,
	linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org,
	linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org,
	nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org,
	ceph-devel@vger.kernel.org,
	virtualization@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
	x86@kernel.org, linux-nfs@vger.kernel.org,
	GR-Linux-NIC-Dev@marvell.com, linux-mm@kvack.org,
	netdev@vger.kernel.org, linux-decnet-user@lists.sourceforge.net,
	linux-mmc@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-sctp@vger.kernel.org, linux-usb@vger.kernel.org,
	netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
	patches@opensource.cirrus.com, linux-integrity@vger.kernel.org,
	target-devel@vger.kernel.org, linux-hardening@vger.kernel.org,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
Message-ID: <202011251240.1E67BE900@keescook>
References: <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
 <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
 <20201123130348.GA3119@embeddedor>
 <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
 <202011241327.BB28F12F6@keescook>
 <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="AWR/7M4m";       spf=pass
 (google.com: domain of keescook@chromium.org designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Nov 24, 2020 at 11:05:35PM -0800, James Bottomley wrote:
> Now, what we have seems to be about 6 cases (at least what's been shown
> in this thread) where a missing break would cause potentially user
> visible issues.  That means the value of this isn't zero, but it's not
> a no-brainer massive win either.  That's why I think asking what we've
> invested vs the return isn't a useless exercise.

The number is much higher[1]. If it were 6 in the entire history of the
kernel, I would agree with you. :) Some were fixed _before_ Gustavo's
effort too, which I also count towards the idea of "this is a dangerous
weakness in C, and now we have stopped it forever."

> But the broader point I'm making is just because the compiler people
> come up with a shiny new warning doesn't necessarily mean the problem
> it's detecting is one that causes us actual problems in the code base. 
> I'd really be happier if we had a theory about what classes of CVE or
> bug we could eliminate before we embrace the next new warning.

But we did! It was long ago justified and documented[2], and even links to
the CWE[3] for it. This wasn't random joy over discovering a new warning
we could turn on, this was turning on a warning that the compiler folks
finally gave us to handle an entire class of flaws. If we need to update
the code-base to address it not a useful debate -- that was settled
already, even if you're only discovering it now. :P. This last patch
set is about finishing that work for Clang, which is correctly even
more strict than GCC.

-Kees

[1] https://outflux.net/slides/2019/lss/kspp.pdf calls out specific
    numbers (about 6.5% of the patches fixed missing breaks):
	v4.19:  3 of 129
	v4.20:  2 of  59
	v5.0:   3 of  56
	v5.1:  10 of 100
	v5.2:   6 of  71
	v5.3:   7 of  69

    And in the history of the kernel, it's been an ongoing source of
    flaws:

    $ l --no-merges | grep -i 'missing break' | wc -l
    185

    The frequency of such errors being "naturally" found was pretty
    steady until the static checkers started warning, and then it was
    on the rise, but the full effort flushed the rest out, and now it's
    dropped to almost zero:

      1 v2.6.12
      3 v2.6.16.28
      1 v2.6.17
      1 v2.6.19
      2 v2.6.21
      1 v2.6.22
      3 v2.6.24
      3 v2.6.29
      1 v2.6.32
      1 v2.6.33
      1 v2.6.35
      4 v2.6.36
      3 v2.6.38
      2 v2.6.39
      7 v3.0
      2 v3.1
      2 v3.2
      2 v3.3
      3 v3.4
      1 v3.5
      8 v3.6
      7 v3.7
      3 v3.8
      6 v3.9
      3 v3.10
      2 v3.11
      5 v3.12
      5 v3.13
      2 v3.14
      4 v3.15
      2 v3.16
      3 v3.17
      2 v3.18
      2 v3.19
      1 v4.0
      2 v4.1
      5 v4.2
      4 v4.5
      5 v4.7
      6 v4.8
      1 v4.9
      3 v4.10
      2 v4.11
      6 v4.12
      3 v4.13
      2 v4.14
      5 v4.15
      2 v4.16
      7 v4.18
      2 v4.19
      6 v4.20
      3 v5.0
     12 v5.1
      3 v5.2
      4 v5.3
      2 v5.4
      1 v5.8


    And the reason it's fully zero, is because we still have the cases we're
    cleaning up right now. Even this last one from v5.8 is specifically of
    the same type this series addresses:

        case 4:
                color_index = TrueCModeIndex;
+               break;
        default:
                return;
        }


[2] https://www.kernel.org/doc/html/latest/process/deprecated.html#implicit-switch-case-fall-through

	All switch/case blocks must end in one of:

	break;
	fallthrough;
	continue;
	goto <label>;
	return [expression];

[3] https://cwe.mitre.org/data/definitions/484.html

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/202011251240.1E67BE900%40keescook.
