Return-Path: <usb-storage+bncBDZIFAMNOMIODNWLWIDBUBBBH5ABQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9918CF2B1
	for <lists+usb-storage@lfdr.de>; Sun, 26 May 2024 08:49:06 +0200 (CEST)
Received: by mail-wm1-x348.google.com with SMTP id 5b1f17b1804b1-420122cf3eesf6572735e9.0
        for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 23:49:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716706146; cv=pass;
        d=google.com; s=arc-20160816;
        b=FmNecF8s/5U2vsXvDaG/O2ydz9gUA6czuXNa23fwJMXxZmh+pwIZnxqhHrKCKDTjm1
         n8/BwZtT6i7/yCNtSXgLcPCDW2lEIdrok8niTyLOH4arFy9ZF0tw5t8tR2VK+IpOouOx
         gOtXof7fhC99xeUgBsyM93n019VmAfOGR4AHYmwK/xUQ9EtgHESZ3dwcUu/R/azmp60h
         D/Ecn3dVxXxXgsxNlvaValOeNkKwyEI2qgh+YYVAKrbwr3dtpVEWmkdC3ABJD4YbVOkx
         QT3u39pBXw9+qiNV3iYSSo0/1orEMpPO0YNmmdENNsF+dSWAU0H4U7aWsgQij92ile0Y
         NbVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:ui-outboundreport
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=aT8T2M3dtmghKHCPVHfMc+5u68Xc1FO0XWaSuXkOa1w=;
        fh=goSyG6sGQB22skmIvgikfKoumdyzdZ9INBVkKHeFZPk=;
        b=fvKId4QKseUDaTM1uDJNtfTB6nkw1CieZQpPyw82giepDRJLP1O8ZREhGc7lBRWuUh
         V2zW/sfoDiHPxkmUJZAzMFTMH8wDXApRgoxCaUAUI5QmUTVblw0CXwux9QzFQYS8flwl
         UnE4DSYlueGo7YahSK53tdPjPmZqj7u/MYd36BVsevsVbGc0XYWOxMSFkj7WI/kavtm6
         WVhAYmLswQnC9fZobwpQb7mOXcNVThOuRTaikjoRxkXmoGbWC8D5j2Ffy0KjrLxKrjnW
         twVQ4ewc9jd+5voAOgR1AxWpmvK2uIM/K0JAvBYGj03gY7yku30glIoyOLUqN1Jc9U/K
         /VVw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@web.de header.s=s29768273 header.b=h1kWEPQE;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.14 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716706146; x=1717310946; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=aT8T2M3dtmghKHCPVHfMc+5u68Xc1FO0XWaSuXkOa1w=;
        b=aUCstGkYo7gXVmzpmYb+m+Cft1OR5rxxC+JEUaD8N7ZHTLA7Riou+iBdvjluWro5yg
         YIPfWNuaX+EMjA0VubmIzM3jVIQS/d3Ocetf94ElqMr6bHV2qjj5aIr+yWn6A4nynQ/f
         e/X0JgIXeSdX5Lg62nc6UG7aMSxOLmCTIbrlc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716706146; x=1717310946;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aT8T2M3dtmghKHCPVHfMc+5u68Xc1FO0XWaSuXkOa1w=;
        b=JgHeMpVPePFdevfhaa4bxwjEnRMKFe5qwBsrohrwSkSyhvCZK7MoDclZCJ2WjgZFqz
         8Twq3fII2PQHhWMECaWzAmtL5hoTOoAK5QpNpGgtIaZtqt7494Rt9edid4k3jtokExr1
         fbG8JLUsqwITdN25pN8xkyFP/rRwwqH/2xCzm/KeGJn7cy37ao6A3NDl1zVm9qvvSbqa
         IswYOXeysAXdzFh18rmUEKuefPEeQMNhQmX0gtnxsaeyvS0dqEDhFGuJWCCPeeg6jwx0
         nGO4ARfcb98lqA8raSOl31AA9q/IyKpJap8KOHcOfP30mlMbyOERtjbKcOUMc6qha+CM
         8pyw==
X-Forwarded-Encrypted: i=2; AJvYcCVCsa5fVDAtndFLAV+uQc2BGoDyweCc0sPyIXDDQ2btIU6sZO3U4AMUmGohEEWVZQE5unn/QcB86nYo1smyikTevDcLRjIaP7aP
X-Gm-Message-State: AOJu0YxAHaYtC72zCkEnkDtW1A2t/7QGIhsb64k7BX8v/9K4LDdhHbtW
	ZrMaWtCfqvlhrZAwlrasnJExfmzaY3yn2I2O8SYKjh+VwMQIkf7B0SFLOw5MwrU=
X-Google-Smtp-Source: AGHT+IGW0YTDhX8q4BFV8YHsyeSL1n6pZ3AfBECSp8OTuM0PzVvLQYzJ0NVgUhxkKqC67uIOXgKmXg==
X-Received: by 2002:a05:6000:118c:b0:354:fbc8:17d1 with SMTP id ffacd0b85a97d-3552fe021ebmr4042335f8f.61.1716706145963;
        Sat, 25 May 2024 23:49:05 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6000:e48:b0:34c:22f9:2351 with SMTP id
 ffacd0b85a97d-355bc8549afls702962f8f.1.-pod-prod-03-eu; Sat, 25 May 2024
 23:49:04 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV3kdKzuo6RARWtROcWN433qcoE7R9FEQSusxlp0jY/P5GTd+X6rrIpx6UFIIh/CPnKh4oXJZGRdXqV8lZDOTcOKvUC8OgBsxqFCq+yHYmzCk3VTM8=
X-Received: by 2002:a05:6000:1105:b0:354:c934:efa0 with SMTP id ffacd0b85a97d-3552fdfa4e8mr4201185f8f.48.1716706144272;
        Sat, 25 May 2024 23:49:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716706144; cv=none;
        d=google.com; s=arc-20160816;
        b=PrNNpGZI7dg/RGd+zkyopHpPuLmaZoErhHoQT4GwYt0A7U7Ci9wswQcF/4JBZEoI+v
         p1Q9D2BdG9moaPFq/kgiyUfqaizd9vmUJKM5SSMLUA9UYuCGpRNhPa8zlcS/7YzISnhb
         0I4LxI2FARQ9aioPUiJ0e2azwTpc1nMmfI4rCKfKmuqusszasvIWQQXoqpJtAvaa6RkG
         4QDa9qGQEdYTINKwJWYToKm3cQ/vIUJlOlpljOQdAO20DgvjuVunxPjwl7m4E8bj7HBW
         QIYA9OzmBXE8Q3dQM3J/ZOhsXYgdEuE5Pvbfv6o+cqrsw+0jVF/ykicTgvLQ7F5QhTHB
         HT7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=ui-outboundreport:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=OiHjt0siDQqvGY8VnV+rHZQiQTcvyc3EyCZa+CupTjc=;
        fh=Ew+4/Un4prued+JRCNaKW/Fv+R1REzHamw5Zz600Wns=;
        b=YXUpaROcr6OcY9fmpVO8GfvoJ/q/DU8kigdfTjliJsyvkUu0Ntm0wm8I8jfJdzKzv9
         Qcen1GPeupBzQjI1be9WM4Qndi2C9wKC4XFr9bsHDWmwtr8DgOvVpdOjoUTmSknrPpZw
         ZpmTRHZo329gG+BNLSoHTLh72RnQ83ho5Q+qJZ8ct12ldCsXCdYq6d0viY7JvjkKJoM3
         nkW+rHbcaenmlqPsgN3HTBE6jAdeMcaIdRzHl0+FOgAcQuU7GMAElJu2ql8QeLNdM8PY
         8lJAsapAF3TZTsQihUaN7eNHxA70t6wrL1qOQWpQRqRXGyEGiQS5AWQHLN9j8XTgmQ5T
         fYhw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@web.de header.s=s29768273 header.b=h1kWEPQE;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.14 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=web.de
Received: from mout.web.de (mout.web.de. [212.227.15.14])
        by mx.google.com with ESMTPS id ffacd0b85a97d-35586b0d805si2691889f8f.851.2024.05.25.23.49.04
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 23:49:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of markus.elfring@web.de designates 212.227.15.14 as permitted sender) client-ip=212.227.15.14;
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.83.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MSZMD-1s4kp40jRh-00LqcC; Sun, 26
 May 2024 08:49:03 +0200
Message-ID: <79ba60d2-357a-45f0-93af-78879b9f4b02@web.de>
Date: Sun, 26 May 2024 08:49:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v6] usb-storage: alauda: Check whether the
 media is initialized
To: Shichao Lai <shichaorai@gmail.com>, usb-storage@lists.one-eyed-alien.net,
 linux-usb@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Oliver Neukum <oneukum@suse.com>,
 Xingwei Lee <xrivendell7@gmail.com>, Yue Sun <samsun1006219@gmail.com>
References: <20240526012745.2852061-1-shichaorai@gmail.com>
Content-Language: en-GB
From: "'Markus Elfring' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20240526012745.2852061-1-shichaorai@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:OXoA+aME6lnNAQSWdIumGtUQ+qNtxO4D83yhqvkNyUne1qneMsd
 cGdDBzuwsNW6I/xTqrtrINfSLrO1z0QmXpwKnaEC25OIxbrkJkG/Y+rHnoSZauTXrqJvCfe
 bHFd5Sfzi7HlomS0eGt6IQqbIh5vG+k1ztRIGb1kpCz4CUSMbpDa1JYvl3z8wmVZFKLch1H
 EQpOEpku0Q3ddQY1CZqNQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:jGCwj6I+3Oo=;8eY2ZJ+x+r/9GB0D0lp9OfZ83KV
 c1LauGbB0wPyH4rfhzKiQn3QE5P8w0Rt00iSJmxur6FfxDJRWOELwGaGmuUPiWWglf1J00t/X
 hclDKTCgo2IjmcIDKiL9QpyxZ7dN6PRjOJR02zt16Ti+SlW2CA7yAgvivifktmG3zVO+V5lDR
 Nvo0PLF3tlDYt493U3sPmaJB4Ccas/fakO2cOSyikhiqDdQ8B8O+iFSqtssAPLlflVDEa3Sc0
 ie1cCpmxleNGYBitjTfL+Xy+d95d8E4mxAZHxrEvpXscjvezr4B0YL5mIGPcmDSkaVbD0jQTo
 6r/RPLUbbaTcve/1p5yQbT/UnIb/RTBYKyh9WU8Tr8RioC26p+D/b4WmmAcmjXKOvza6O8a8P
 bs+ntkewDMIfEN4ImjhzmLOn+99/Uov4NZUU4K1pk0aGujvuTjLTzSCKx/rInPsOYOqI3f9SZ
 XSP0kGrVSUebVyqbWXKL9Al7uV+7hldiVZz3oS7KuuqwGrQqKTpv9ilVjjK718oPGHFoeDj+8
 Hr6SFfZ2f/4WdiWlZ8acXrd66jcTNyd0WCCYLGBIcg/fUJlsWR0371PWJ6+y/PW8knopYH/i3
 1wmILOOo/IUgsgNtGiwRNCEAFiUZhCN9+CKNz27Yjc+2bD6ICXuOSWoN/V+CpCQKFZyRycIlH
 b+sQlWS6/o1k01o9k5SPIVVC/GnL9uT9sudUYemEQEhMKP6OGHE6i2AHJoFVAyfxjx4A3PP/H
 P9ucS04ANoB0CWwf9ABcOLf0x0A1ILYOgzWcQaKAB8FvdSJzjyGL7V3AjDj0wYs6w8RrqB57/
 QU6s9mE7qS45lt5/QlOz0LqYEysdh2iZ2TVN3SVX0j4gE=
X-Original-Sender: Markus.Elfring@web.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@web.de header.s=s29768273 header.b=h1kWEPQE;       spf=pass
 (google.com: domain of markus.elfring@web.de designates 212.227.15.14 as
 permitted sender) smtp.mailfrom=Markus.Elfring@web.de;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=web.de
X-Original-From: Markus Elfring <Markus.Elfring@web.de>
Reply-To: Markus Elfring <Markus.Elfring@web.de>
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

=E2=80=A6
> Fixes: e80b0fade09e ("[PATCH] USB Storage: add alauda support")

How do you think about to omit the text =E2=80=9C[PATCH] =E2=80=9D from the=
 tag summary?


> Reported-by: xingwei lee <xrivendell7@gmail.com>
> Reported-by: yue sun <samsun1006219@gmail.com>

Would you like to add any links as background information for these reports=
?

Regards,
Markus

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/79ba60d2-357a-45f0-93af-78879b9f4b02=
%40web.de.
