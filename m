Return-Path: <usb-storage+bncBC27X66SWQMBBC4XWH6AKGQELZJPIWY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB572917B3
	for <lists+usb-storage@lfdr.de>; Sun, 18 Oct 2020 16:05:00 +0200 (CEST)
Received: by mail-yb1-xb48.google.com with SMTP id a184sf9024630ybg.10
        for <lists+usb-storage@lfdr.de>; Sun, 18 Oct 2020 07:05:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603029899; cv=pass;
        d=google.com; s=arc-20160816;
        b=l0+LrGgD46JobtMeIPMGnQTlnRWCMH8ZAkW4On0KZvPdGsyhkLpltksjdc1xk5CT1a
         M26H9vnutGB526ByXQ40uzMmjHFUoJO4AIrZg2W2zbD/gyriWLdpo6QkXW8MDRryk94d
         ejNjKRJFUidR3Xzwwc36Z2htg9WOel7drLCYlNAnSkHZH+Jt/27194lgk9QoKd9oh8+L
         SHnxoBFUdrO6g9e63x87HpinAbi76S4R0sefNbI/PYRBl1tuwAUJl5qtVtMD/uDF6hpR
         VJex+LcipdJhBk65ApEdMmeUEz3QRr3fJl8/8xr8AZfs3qXQtCdkC5VFIg/BdOMNjQAC
         ub5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Dyoo4oQVT3ql7b9WmecDllPfMU5PO4fVMPSTlnH/2z4=;
        b=QGjraeZOkuL5jFktTiRtDMn/iJi+AcOtyBlFx+LJblomyHV2dcaDTp46Zmy2lniqBj
         b9lv0Qh3tkYKbp+Fzu08TIihFJ4xkW8x3cWADjO5LzOX+TSAUA/z5p8f28m09S5l4DI8
         t/tu4mVTkRKGPDOg2qQ04jyyMbMAub7GAoCQyOVmEWkpUMsL9+ryKTq3auj77Rfnw7gw
         MKi1yRGxn897vUPVZWdfXWv2VMTsHvgik7C3ASJZWAKF3CvH39A5bboyeBc3xOJGrWUh
         /jOsenuXFnPZ9gAfiuz8E1F4/LAGNFGQidyV7vr44D8fiH+Ob6PWRIJmqa4bu+MG3zw5
         peGw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CE3TTm0Z;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Dyoo4oQVT3ql7b9WmecDllPfMU5PO4fVMPSTlnH/2z4=;
        b=adkhq+RjYY2Tj8G0tczSo14femF+gGHU7psZspByHFls8khCxer+FhM8gQZ7+SQOiY
         PysNp5BT1SVmKtnKItYyirYag2Jkd94Lni3m/rs7cbg02teK5+9NYEfwZRhSvmzyWRjP
         KAazel6PZN+FAbGiQqcTXnjxRI+GpYENXo2s0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dyoo4oQVT3ql7b9WmecDllPfMU5PO4fVMPSTlnH/2z4=;
        b=iJYe7icNOBiCMbEhdqu7yaKOERhTkhyohFXfwfMJOTxaqtmVfatyW7ELigZL5Zh4en
         3hKEAZpA1iSDygRusyQSmnF/yQr8hrSecIfMQsjzXIAlinCLoN696PzcIsureUW2KAO8
         vMkujfglFT0abFokrQU4ln0K4FxnO0MeFPGh7OYc2VxwsZGJhH/rSZZEHLfcEeOll4MN
         yJITDWiHdO4GDicXTsmvJBt+X+QVYLXdXEOy3pLpf1aUQTCS7t5ZQ9eJDkkKmGpqxxaF
         eYKJ7HLkehQLOXreBSLvEF+rtnbUGl5JJCF9hgTYG4djhNJU5u8VCDyTHt2PIde9dDuv
         DyBA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531+p64S5vuGNzlXuuO7bxf3rt9piTQ8LG9Gc5LlAqRahDKgR83t
	FO0wXdNgmH5pKhbyPxaVzgdgvA==
X-Google-Smtp-Source: ABdhPJwlsskEQ6co1MIJHvvDT1bf/hk1fvHNuceB1kMljvWhu20B+NsweJuzKj6ZbiaklaJa688pqA==
X-Received: by 2002:a25:9009:: with SMTP id s9mr17771688ybl.471.1603029899546;
        Sun, 18 Oct 2020 07:04:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:4e08:: with SMTP id c8ls3810350ybb.3.gmail; Sun, 18 Oct
 2020 07:04:58 -0700 (PDT)
X-Received: by 2002:a5b:790:: with SMTP id b16mr1573704ybq.48.1603029898854;
        Sun, 18 Oct 2020 07:04:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603029898; cv=none;
        d=google.com; s=arc-20160816;
        b=W5upbUPkk6uadAGA1t4FyAPFqSxm7BIiQNsjbf/SOxOiY8jXOlhAAKwRwlT30Wo9nF
         IAVEuVWhRLiLyU5FBAkOcKRmCrP1pgJG0/N0Ns2xWsL4RnTVlmLQiOZpXYUKFeOt8YGR
         Le0IBx61Oee34N0g2Krl9tQWSuYf8YFAFAIRj+yhwsrFkRLZ4dEDO7uOZ7Grp2/eC0QM
         BqJ+xu7DGtV1802oattrL9E2oQ/pvLf/a1Q936UMRsXbAg52o/a74+biNQfOtOFcv5KW
         m2YgPS6CjL1oANDM+BP5UEaLJ/hpd+rZIgQZ1nqKNzy84rj6nw3P6nx8w38NEjOuvlCb
         QgGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=kBVMPnQfqrYuRmZ0mFLSkNqYWCaxPfshC6ZYuKW12NQ=;
        b=pxpQubFzFebZKxgkOulaQoAQ3C4MlFnCK73TMbHeX6/rODOhR+08mv62/xjnA2UEVl
         /Gy3eoYZQLs77LX/f6wsDbvGQWuNJbZg4H6mSEfJ1UsmTkSn/QBvWGYAIii9UXbzqQQ3
         XozFwCVRMI1SokXl9f3qFxXuvJ5jcnvzQ1dktaSHuwo7KEjGORnzIRbh1aBmrEE1Owki
         EKl0hOHFNbOeNanVm6GCXRtPh8fbZAyxtnTlZqZ3Si52H2xukwfdHjprEHlSfrHCnDDJ
         yzhwL+t/H7BA1rLOaJFWlXq9ey8faz7k9guNmfJE/b2MsT3LheGEorbjZrzBg55OXd4o
         EziQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CE3TTm0Z;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by mx.google.com with ESMTPS id h97si8663000ybi.405.2020.10.18.07.04.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2020 07:04:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-66-v4XhwQ4lO_mWMg9EqleCeQ-1; Sun, 18 Oct 2020 10:04:56 -0400
X-MC-Unique: v4XhwQ4lO_mWMg9EqleCeQ-1
Received: by mail-qk1-f198.google.com with SMTP id w126so5518695qka.5
        for <usb-storage@lists.one-eyed-alien.net>; Sun, 18 Oct 2020 07:04:56 -0700 (PDT)
X-Received: by 2002:a05:620a:1287:: with SMTP id w7mr12724319qki.436.1603029896365;
        Sun, 18 Oct 2020 07:04:56 -0700 (PDT)
X-Received: by 2002:a05:620a:1287:: with SMTP id w7mr12724258qki.436.1603029896034;
        Sun, 18 Oct 2020 07:04:56 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id u16sm3288927qth.42.2020.10.18.07.04.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 07:04:55 -0700 (PDT)
Subject: [usb-storage] Re: [RFC] treewide: cleanup unreachable breaks
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, linux-edac@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-block@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-power@fi.rohmeurope.com,
 linux-gpio@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 spice-devel@lists.freedesktop.org, linux-iio@vger.kernel.org,
 linux-amlogic@lists.infradead.org, industrypack-devel@lists.sourceforge.net,
 linux-media@vger.kernel.org, MPT-FusionLinux.pdl@broadcom.com,
 linux-scsi@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-can@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, ath10k@lists.infradead.org,
 linux-wireless@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-nfc@lists.01.org, linux-nvdimm@lists.01.org,
 linux-pci@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, patches@opensource.cirrus.com,
 storagedev@microchip.com, devel@driverdev.osuosl.org,
 linux-serial@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org,
 ocfs2-devel@oss.oracle.com, bpf@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-security-module@vger.kernel.org,
 keyrings@vger.kernel.org, alsa-devel@alsa-project.org,
 clang-built-linux@googlegroups.com
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018054332.GB593954@kroah.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <eecb7c3e-88b2-ec2f-0235-280da51ae69c@redhat.com>
Date: Sun, 18 Oct 2020 07:04:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20201018054332.GB593954@kroah.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CE3TTm0Z;
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


On 10/17/20 10:43 PM, Greg KH wrote:
> On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
>> From: Tom Rix <trix@redhat.com>
>>
>> This is a upcoming change to clean up a new warning treewide.
>> I am wondering if the change could be one mega patch (see below) or
>> normal patch per file about 100 patches or somewhere half way by collecting
>> early acks.
> Please break it up into one-patch-per-subsystem, like normal, and get it
> merged that way.

OK.

Thanks,

Tom

>
> Sending us a patch, without even a diffstat to review, isn't going to
> get you very far...
>
> thanks,
>
> greg k-h
>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/eecb7c3e-88b2-ec2f-0235-280da51ae69c%40redhat.com.
