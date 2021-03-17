Return-Path: <usb-storage+bncBDRZXY4CYYORBCEWZGBAMGQEZAV7RMQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EDC33F824
	for <lists+usb-storage@lfdr.de>; Wed, 17 Mar 2021 19:31:37 +0100 (CET)
Received: by mail-ed1-x548.google.com with SMTP id a26sf12861539edt.23
        for <lists+usb-storage@lfdr.de>; Wed, 17 Mar 2021 11:31:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616005896; cv=pass;
        d=google.com; s=arc-20160816;
        b=r8acC0rKm64cscA0PsC19jmHwDdlOchsLh116ZM2DJEy812mJAGlftfI/Rf07qGP31
         zA5ImIng51maOIHlWoA5epT9h+0jXvxlt/QqxqPrteHctHgBURTrz/iyMzj7DZ3qAkSd
         /cr5UT8ivy6hHICSl1rytkN3oM0Es51Bqky4mBa+KsWDnMvYs7lV5gxPxby0MHAKmZDf
         7Mf0L1tiz1y1V7mJEvDkOLYfb/zzQUVsVT1FJRZjhRRuiTepcRRzXk7PkBo60tNSXZcq
         5yNtw5pMl6Ex6N6MYu22Z4G7lpCqevJ+ppbpn7SYNt4p0SU8MZtoyEzQ//efaCKdqvN1
         7tEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=m/dLemLglRoNtktd3luzXNXbAj3fhezBG2wDf3itF7I=;
        b=uAvwpTdznBMRZxqBFDiUEIpliKuLXjFxYgOPjyQjwuEm7MbMGDfM4IbaRo2Y7/grt9
         YzXnK+a1mvItyUqV52l5O8zbbbTdq7PfvCKydCmoPWjI3DF4V4csVdGJTU71EhRCUf1k
         Y8f2wBMR/cD52O9q8iqiM79D/6hglVffrpQTkbl/gq6oLXMQ/ZnPLZmpIIJ+kk6P4w19
         lPpFDV/QJAfijYZ2jE38HD8ePj4+rWXF7LvgJct+TDQw8gDBJUEPYfuDLi4o/9wNdpo9
         vMX8RBrRUaTRIVuGIvHRstgFvCH3Why8m9Bv2GfPTs2rdTmTMze5OJKmzLNz5f84xGoO
         4XlQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CojOm+tA;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m/dLemLglRoNtktd3luzXNXbAj3fhezBG2wDf3itF7I=;
        b=br0NPgQrTOxwm5rBDFMTSfO7A/Ax8pV6Zzyul4H2lx38vEpu3Muhx6S/aYrfAUQrCe
         MQF6xRensKl98W4vV4UrL7CVHAzRLeuhSjich//RktQ9cETOMEYTkJMRhf+IQ47Y65tK
         8gY13Nh0Mt7d3MxwGr0pIrlL3iM7VZY5qfvZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m/dLemLglRoNtktd3luzXNXbAj3fhezBG2wDf3itF7I=;
        b=pXS23slw+Jc6CbmUxT87y4er7Udjh2o+qCrRLfFlh2GWJGVdwGIPRkzflGDwBKU3Le
         Bejrhek6vN420KOfCxMd7Lpd0FJThN1CzX+GNyNEOzLBRrfM4gGpDn78ggjZxHFc+9rt
         mh7986rchIDjr0QyD5R9QkLjxHXvnputZZHmttb2mEbe9NFNApYmmnMY8xSIljGcLK1U
         Lt4fqWmM1kpV3pVIWbaJHbERUkWwDx9NwOb76faBnuMJqtArxbQcEXsuY1Z0IrJYBQHg
         QX/5jeBsGiketbHC4EtGOWVLPSFNk4SKWrU89dmbCx8+YJkp8wGhR4EOw3g6RjhvJau4
         IJXA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM53080ZPB1BQ0or5tF2uQ4VABsIqnNaQyCe6R6XT9kmAY31Lfa8WC
	J5g2Renl4DgSsaWr2hR6grDxog==
X-Google-Smtp-Source: ABdhPJyxa7tt2jRPSlT6RzH3xQ9KaC4G0eH7DIewQuKYgutnmAmiNLCmAYbW5xuguF+U+11sYS9H9A==
X-Received: by 2002:aa7:d98b:: with SMTP id u11mr44724415eds.352.1616005896837;
        Wed, 17 Mar 2021 11:31:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3592:: with SMTP id y18ls2380529edc.0.gmail; Wed,
 17 Mar 2021 11:31:35 -0700 (PDT)
X-Received: by 2002:a05:6402:105a:: with SMTP id e26mr4372852edu.164.1616005895602;
        Wed, 17 Mar 2021 11:31:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616005895; cv=none;
        d=google.com; s=arc-20160816;
        b=AsVwZ3I1UJ4UjTQ6OsPU7b5Jv42b9HfY9WrmRXKT0qb3AdAAnEFxOgyyP1+FbGNRcN
         AXrbkcPJ46u9NYnAbCyvrbG6CzWWOzlivuiBIiKU+6XPjFHSSinIEXTsVBY7NqzLyGsE
         1L9M6J+kn9x28+7pBWxbgmSAhYmHsYOLUPmRPHbN2WaWjCoU71nNvMfbzvDIK7x/EALf
         vlq+RRJJkmaZAj1aHYIz+xZU8GiNvU3ipFmYWJaqchZwgbyMrr6oK4ftharb3prsu26K
         Z05fHo5aEC7S+ZhVisHBykHDDdZB5WSbUE2q9iocsdhheihfFFBh3C4yIU/v3f9ZBmX1
         l1pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=9gy8ZFKN6JzJ/ukEL8m+IrAcLPJBLHNahMgLQSwItoA=;
        b=ccfHAv93E4Yk7tnCQGoH2JN9KoiZtXge4qfpMQWTyA0Q6FW1gUf66XEQBaKJI6GLs6
         LgYsr/CB91nd/QotBFphEmjYVunbFPo4W42Y65B4yCdGw3YLGdfVItYw4Zc0JgBjfZHb
         AsE0sb4IZ27Ov1cYfqWQzxWPMaJk6UFQybP4M0/FNbKKzfDO90RukWDjJaY8KUJkvOv5
         n5RPHxIoK2ocZYq5J4eD3wexTNRdUZchHQKFC2c3Fka6gRiWqWBQLMwNV5nCe3h7wMj+
         Cn+gIZVeuV3rSXJjfROkQ67Cy4rclwg2cqvHSsz+vMOtP6KVJCJ2JcNsUKbTKmJx1uQE
         Ijug==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CojOm+tA;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by mx.google.com with ESMTPS id y8si17350578edc.279.2021.03.17.11.31.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Mar 2021 11:31:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-b1yf7FCrPXq40s6SQq94Hw-1; Wed, 17 Mar 2021 14:31:30 -0400
X-MC-Unique: b1yf7FCrPXq40s6SQq94Hw-1
Received: by mail-ed1-f69.google.com with SMTP id r19so19423369edv.3
        for <usb-storage@lists.one-eyed-alien.net>; Wed, 17 Mar 2021 11:31:30 -0700 (PDT)
X-Received: by 2002:aa7:cc03:: with SMTP id q3mr44651395edt.366.1616005889373;
        Wed, 17 Mar 2021 11:31:29 -0700 (PDT)
X-Received: by 2002:aa7:cc03:: with SMTP id q3mr44651379edt.366.1616005889252;
        Wed, 17 Mar 2021 11:31:29 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id a9sm13985863edt.82.2021.03.17.11.31.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Mar 2021 11:31:28 -0700 (PDT)
Subject: Re: [systemd-devel] [usb-storage] Re: Amazon Kindle disconnect after
 Synchronize Cache
To: Matthias Schwarzott <zzam@gentoo.org>,
 Alan Stern <stern@rowland.harvard.edu>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
 systemd-devel@lists.freedesktop.org, hirofumi@mail.parknet.co.jp
References: <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
 <20210316170433.GD448722@rowland.harvard.edu>
 <1d9f059e-8b21-0895-9a50-39b6b1a5cc5c@redhat.com>
 <20210317151746.GB488655@rowland.harvard.edu>
 <5f8c0755-0884-f505-c4e8-3a5e89001d58@gentoo.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <f3d9bd3e-760f-3708-5eca-91a23948c6b7@redhat.com>
Date: Wed, 17 Mar 2021 19:31:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <5f8c0755-0884-f505-c4e8-3a5e89001d58@gentoo.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CojOm+tA;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
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

Hi,

On 3/17/21 6:56 PM, Matthias Schwarzott wrote:
> Am 17.03.21 um 16:17 schrieb Alan Stern:
>> On Wed, Mar 17, 2021 at 01:21:50PM +0100, Hans de Goede wrote:
>>> Hi,
>>>
>>> On 3/16/21 6:04 PM, Alan Stern wrote:
>>>> I think it would be mildly better, but not a whole lot.=C2=A0 Since th=
e
>>>> Kindle describes itself as having removable media, the kernel normally
>>>> probes it periodically to make sure the media remains present.=C2=A0 T=
he
>>>> default probing interval is 2 seconds.=C2=A0 Reducing it to 0.9 second=
s
>>>> doesn't represent an exorbitant additional load IMO -- especially sinc=
e
>>>> Kindles don't tend to spend huge amounts of time connected to computer=
s.
>>>
>>> Ah, I did not know that the default polling interval was that low(ish),
>>> given that the default indeed is already that low, then changing it to
>>> 0.8 seconds would not be a big change.=C2=A0 And we probably have a lot=
 of
>>> lower hanging fruit for unnecessary wakeups then that.
>>
>> So we need to make a decision: Should the patch be merged, or should we
>> punt the issue to userspace tools?
>>
>> On the plus side, the patch is rather small and non-invasive (although
>> it does allocate the last remaining bit in the 32-bit fflags field).
>> There's also the advantage of sending the extra command only when it is
>> needed, as opposed to increasing the overall frequency of TUR polling.
>>
>> Any opinions?
>=20
> I would vote to do in kernel as that is a cleaner solution:
>=20
> 1. It will work out of the box.
> 2. It only sends one extra command when needed.
> 3. It makes the block-device not break if user-space adjusts the poll int=
erval to higher values.

FWIW my vote goes to the in kernel fix too.

Regards,

Hans

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/f3d9bd3e-760f-3708-5eca-91a23948c6b7=
%40redhat.com.
