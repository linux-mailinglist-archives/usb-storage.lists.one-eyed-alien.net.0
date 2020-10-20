Return-Path: <usb-storage+bncBC27X66SWQMBBHW7XP6AKGQEGWUQTFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id 490D4293E2E
	for <lists+usb-storage@lfdr.de>; Tue, 20 Oct 2020 16:09:36 +0200 (CEST)
Received: by mail-yb1-xb46.google.com with SMTP id m62sf2197448ybb.6
        for <lists+usb-storage@lfdr.de>; Tue, 20 Oct 2020 07:09:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603202975; cv=pass;
        d=google.com; s=arc-20160816;
        b=oYbFw63gXWOuAjnCyYve5RDyeVVOeYFrvTHYsCn0lj5dkdiDOYV64Y+8x5csGGvlHc
         ElVXKts5wHZefJ9khAX+q7WGV2Jyitqc3AtcKrRZkwCMAAhvbhmiFd1N9zeajB7tUg6O
         FYvLp/0L9hNHhgoyXqbWAUZ3R6mwJ6VqnOyvYZtVejpnmIGPEX8hnyxspPwcqQV2qSaE
         YKoL7wnsNiUKqyQ7w1IkzkRRkgk7kGq5vjJ6LvBiDQC4NHwotr4dd8FQiZlwmrSWgg5i
         OqW1Nqj/rXP596tfbB1q1XKprTYW0P8LhVl9coS038V9s6amcVV6RG5KOK/prl75IxRs
         TArw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=cBJ84bhvG7AnWCq3wQJTZ1AIkgWZ4ackZX+4AsrrZ94=;
        b=Nen6XwDlBlZTX3B2RcujQsRPrbq3Tmq92AVALKarryuc+a8rcWWi7+pq6FNqdRW6or
         OmwaTUs/Y3Td9mXtPyFvg7g/FEHPsKzRot6tGNpo/ekZnqtoThdvmpfJ9SIoMPY4qhG1
         4YMztPCYT65VuMmm0XIYEqr+yKg+8pGJumN40aD5nL6jelft9T6RBFm2LBbO4Fsvca51
         Y5GEcpBB3Cv1ucJ6t/9kWEw2iSvkubrQGI8OquIMzhS94KMrz0/ps1nLe12hsxV/IzV9
         /QQoZ82nxrDf75WQOVEEaWf5ERwbuHzwKjn+KNgFxkfAibkVskMK9tchJtuZFPA19G4Y
         98EQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cnqp502M;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cBJ84bhvG7AnWCq3wQJTZ1AIkgWZ4ackZX+4AsrrZ94=;
        b=N9MyNuOlQL3YsDD4vQBh19WaZkgDF9kaYRfFYPLhyGlkVVKh2Mb+ofSkZjdb1yiis6
         AVR/a8IF7zbnFlKBWGZ7T/OEy7n/ImPYzzlkHxhVcKv/M05dNbmrhFytQZy4ANpgr7gU
         q2FWgRePNSeNXKOCaPH1FJLdouMoB+MhmeOxY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cBJ84bhvG7AnWCq3wQJTZ1AIkgWZ4ackZX+4AsrrZ94=;
        b=eaQKxMRgsorkvfuhzcnUT036SXafa5DRZw/mT4idKNf4TpVxS6uTC9hzC/JkSAx+yf
         o8bUnhiS2q+c76UBlCPj1DdwMZJerFZAtXtw8KuUyMDNlsZpvh6To0kEJHylcdeWc1ka
         jAbolMNj7MTynzfCmV2cUDQM8/Rk9d7CLcmARuAskD9KnHH3ClFoKONG6yky2HIIUpTD
         k+pJZ2yNRaXFbmN8DY3vjk/qSGrWwpQkEPQRSlAlRWJstECPzzbPpvmDICivR0nu+WzG
         V2Ie+CiRE8l7gIsi0uqmkNZfbllzaPv3/75HR7pbROU7jcT5YhgAv4SFArzEJZu7ZGzM
         o91w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531uwIgCnCE1jEEJmy6S3a9AI03A4dcmFMz/tR+S71vwMNTKMq8D
	08taS47lpt/iOGQFAfaG/qBX1A==
X-Google-Smtp-Source: ABdhPJww7CreQQht0uOCytUWuXk9LUVjQsOT8JnqdgLpLgp8BMl3uGojoPLGIq3OEoWCt9dtu6lJJA==
X-Received: by 2002:a25:e407:: with SMTP id b7mr4246829ybh.280.1603202974947;
        Tue, 20 Oct 2020 07:09:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:2689:: with SMTP id m131ls1056412ybm.7.gmail; Tue, 20
 Oct 2020 07:09:34 -0700 (PDT)
X-Received: by 2002:a25:dd03:: with SMTP id u3mr4284831ybg.497.1603202974335;
        Tue, 20 Oct 2020 07:09:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603202974; cv=none;
        d=google.com; s=arc-20160816;
        b=jTl/FJLE79ADWtT4L8cFR+44hBbdLG4kG33qPB+pTAyDQrKiwiFovhN3yM4kt0VUPo
         dGexUoQRZNamyOLuCE8BJeZLp+ccuhz+mb+bxznlc5A8Al0BAFB1u8HgR4UF8SpWZhkJ
         Dg3FNtyVb0UQnNkh/NkuqH/h8dGINOl7LtL2XqWFKm/2kb3iaJa9iCwTR/LFzyzGywOd
         FhYTG7UnHrFigMUIsGpjSh9msWvRI4hgyRDzlPgWqMKcvaCkREArWnUFoaYL+kHj0LRX
         Tv8rn66OiddrCxPsSn/3ZJNLy4lzyWuY1uLpejo3ws/JI+IB3bUMQgYA5DtPwjeBkVzX
         63rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=rOdQp2iOSkahNa0CfH1+VDlgH/zqWEjNOjN0qUXEes0=;
        b=O06Wg7om1MXDaT/PSVUjW9+1D+9Q109PAyjUPxv5KIl64lP5+qtJA+gM0Qxq+u66J6
         ASfpSAZDkTlFcPoBwYEw1ABg4lCNhhUyVEV2tKyNZKP6sc/E08q2BKY6OuXPic5zgVnc
         OTsh2IDZmzL2rdQHorPQ/Uh1zPLa4OHQxC/zZTyt4byTwQ+CdNOJu1PqheHXHc7l/k/c
         UFEDsed3RuafDMqEgLWSNkGVcqMnOhCqRw6Vf2UpLtA5V6vytwrWIBFPBTCWIip+C6Ot
         VusSmIXbwNpzHhaygvX1XgcCBksn1OnBonJ0mTWpGlYk7hyC7XNjpUgDyjVUtwJnebPW
         MOfg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cnqp502M;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by mx.google.com with ESMTPS id g36si1972222ybj.390.2020.10.20.07.09.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 07:09:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-456-alrizUyrN9C_7ZWK_8y7uA-1; Tue, 20 Oct 2020 10:09:30 -0400
X-MC-Unique: alrizUyrN9C_7ZWK_8y7uA-1
Received: by mail-qv1-f71.google.com with SMTP id c6so1408757qvo.8
        for <usb-storage@lists.one-eyed-alien.net>; Tue, 20 Oct 2020 07:09:30 -0700 (PDT)
X-Received: by 2002:a05:620a:2195:: with SMTP id g21mr2990076qka.358.1603202969736;
        Tue, 20 Oct 2020 07:09:29 -0700 (PDT)
X-Received: by 2002:a05:620a:2195:: with SMTP id g21mr2990039qka.358.1603202969497;
        Tue, 20 Oct 2020 07:09:29 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id o14sm785284qto.16.2020.10.20.07.09.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 07:09:28 -0700 (PDT)
Subject: [usb-storage] Re: [RFC] treewide: cleanup unreachable breaks
To: Jason Gunthorpe <jgg@ziepe.ca>, Nick Desaulniers <ndesaulniers@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>, linux-edac@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-block@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-power@fi.rohmeurope.com, linux-gpio@vger.kernel.org,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, nouveau@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 spice-devel@lists.freedesktop.org, linux-iio@vger.kernel.org,
 linux-amlogic@lists.infradead.org, industrypack-devel@lists.sourceforge.net,
 linux-media@vger.kernel.org, MPT-FusionLinux.pdl@broadcom.com,
 linux-scsi@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-can@vger.kernel.org, Network Development <netdev@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, ath10k@lists.infradead.org,
 linux-wireless <linux-wireless@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-nfc@lists.01.org,
 linux-nvdimm <linux-nvdimm@lists.01.org>, linux-pci@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 patches@opensource.cirrus.com, storagedev@microchip.com,
 devel@driverdev.osuosl.org, linux-serial@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-watchdog@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 bpf <bpf@vger.kernel.org>, linux-integrity@vger.kernel.org,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 alsa-devel@alsa-project.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Greg KH <gregkh@linuxfoundation.org>, George Burgess <gbiv@google.com>
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018054332.GB593954@kroah.com>
 <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
 <20201019230546.GH36674@ziepe.ca>
From: Tom Rix <trix@redhat.com>
Message-ID: <859ff6ff-3e10-195c-6961-7b2902b151d4@redhat.com>
Date: Tue, 20 Oct 2020 07:09:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20201019230546.GH36674@ziepe.ca>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=cnqp502M;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 10/19/20 4:05 PM, Jason Gunthorpe wrote:
> On Mon, Oct 19, 2020 at 12:42:15PM -0700, Nick Desaulniers wrote:
>> On Sat, Oct 17, 2020 at 10:43 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>>> On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
>>>> From: Tom Rix <trix@redhat.com>
>>>>
>>>> This is a upcoming change to clean up a new warning treewide.
>>>> I am wondering if the change could be one mega patch (see below) or
>>>> normal patch per file about 100 patches or somewhere half way by collecting
>>>> early acks.
>>> Please break it up into one-patch-per-subsystem, like normal, and get it
>>> merged that way.
>>>
>>> Sending us a patch, without even a diffstat to review, isn't going to
>>> get you very far...
>> Tom,
>> If you're able to automate this cleanup, I suggest checking in a
>> script that can be run on a directory.  Then for each subsystem you
>> can say in your commit "I ran scripts/fix_whatever.py on this subdir."
>>  Then others can help you drive the tree wide cleanup.  Then we can
>> enable -Wunreachable-code-break either by default, or W=2 right now
>> might be a good idea.
> I remember using clang-modernize in the past to fix issues very
> similar to this, if clang machinery can generate the warning, can't
> something like clang-tidy directly generate the patch?

Yes clang-tidy and similar are good tools.

Sometimes they change too much and your time shifts

from editing to analyzing and dropping changes.


I am looking at them for auto changing api.

When i have something greater than half baked i will post.

Tom

>
> You can send me a patch for drivers/infiniband/* as well
>
> Thanks,
> Jason
>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/859ff6ff-3e10-195c-6961-7b2902b151d4%40redhat.com.
